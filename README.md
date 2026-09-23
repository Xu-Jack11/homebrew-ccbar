# CCBar Homebrew tap

Install the official [CCBar](https://github.com/nanvon/cc-bar) macOS app with a personal Homebrew cask:

```sh
brew install --cask xu-jack11/ccbar/xu-jack11-ccbar
```

To upgrade when a new cask version is published:

```sh
brew update
brew upgrade --cask xu-jack11/ccbar/xu-jack11-ccbar
```

The daily GitHub Actions workflow checks CCBar's official latest release, verifies the ZIP against GitHub's published SHA-256, and commits a version update when one is available. `brew update` fetches that changed cask; `brew upgrade` installs it. The cask installs only `CCBar.app` and does not remove user settings or usage data.
