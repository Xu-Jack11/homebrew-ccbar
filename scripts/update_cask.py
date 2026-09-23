#!/usr/bin/env python3
"""Update the CCBar cask from a verified official GitHub release."""

import argparse
import hashlib
import io
import json
import os
from pathlib import Path
import plistlib
import re
import urllib.request
import zipfile


REPOSITORY = "nanvon/cc-bar"
ASSET_NAME = "CCBar.app.zip"
CASK = Path(__file__).resolve().parents[1] / "Casks/xu-jack11-ccbar.rb"
VERSION_LINE = re.compile(r'^  version "(\d+\.\d+\.\d+)"$', re.MULTILINE)
SHA_LINE = re.compile(r'^  sha256 "([0-9a-f]{64})"$', re.MULTILINE)


def fetch(url):
    headers = {"User-Agent": "xu-jack11-homebrew-ccbar"}
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"Bearer {token}"
    request = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(request, timeout=60) as response:
        return response.read()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="check without changing the cask")
    args = parser.parse_args()

    release = json.loads(fetch(f"https://api.github.com/repos/{REPOSITORY}/releases/latest"))
    tag = release.get("tag_name", "")
    match = re.fullmatch(r"v(\d+\.\d+\.\d+)", tag)
    if not match or release.get("draft") or release.get("prerelease"):
        raise RuntimeError("Latest release is not a stable vX.Y.Z release")
    version = match.group(1)
    expected_url = f"https://github.com/{REPOSITORY}/releases/download/{tag}/{ASSET_NAME}"
    assets = [asset for asset in release.get("assets", []) if asset.get("name") == ASSET_NAME]
    if len(assets) != 1:
        raise RuntimeError("Expected exactly one official CCBar.app.zip asset")
    asset = assets[0]
    digest = asset.get("digest", "")
    if asset.get("browser_download_url") != expected_url or not re.fullmatch(r"sha256:[0-9a-f]{64}", digest):
        raise RuntimeError("Release asset URL or SHA-256 is invalid")

    source = CASK.read_text()
    versions = VERSION_LINE.findall(source)
    checksums = SHA_LINE.findall(source)
    if len(versions) != 1 or len(checksums) != 1:
        raise RuntimeError("Cask must contain one version and one SHA-256")
    current = versions[0]
    if tuple(map(int, version.split("."))) <= tuple(map(int, current.split("."))):
        print(f"CCBar cask is current at {current}; release is {version}")
        return

    archive = fetch(expected_url)
    if len(archive) != asset.get("size") or hashlib.sha256(archive).hexdigest() != digest.removeprefix("sha256:"):
        raise RuntimeError("Downloaded release asset does not match the published size and SHA-256")
    with zipfile.ZipFile(io.BytesIO(archive)) as bundle:
        if bundle.testzip() is not None:
            raise RuntimeError("Release ZIP failed integrity verification")
        info = plistlib.loads(bundle.read("CCBar.app/Contents/Info.plist"))
    if info.get("CFBundleIdentifier") != "com.nanvon.ccbar" or info.get("CFBundleShortVersionString") != version:
        raise RuntimeError("Release ZIP has the wrong app identifier or version")

    if args.check:
        print(f"Verified update available: {current} -> {version}, {digest}")
        return
    source = VERSION_LINE.sub(f'  version "{version}"', source, count=1)
    source = SHA_LINE.sub(f'  sha256 "{digest.removeprefix("sha256:")}"', source, count=1)
    CASK.write_text(source)
    print(f"Updated CCBar cask: {current} -> {version}, {digest}")


if __name__ == "__main__":
    main()
