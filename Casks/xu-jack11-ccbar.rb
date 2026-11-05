cask "xu-jack11-ccbar" do
  version "1.1.37"
  sha256 "fd99f8ff3587e92be15429f692b30561497b6ddaa28a91c82dcb2c3715c2e126"

  url "https://github.com/nanvon/cc-bar/releases/download/v#{version}/CCBar.app.zip"
  name "CCBar"
  desc "Menu bar monitor for AI subscription quotas and local usage"
  homepage "https://github.com/nanvon/cc-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "CCBar.app"
end
