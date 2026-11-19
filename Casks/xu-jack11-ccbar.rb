cask "xu-jack11-ccbar" do
  version "1.1.47"
  sha256 "5b5b7a0babb9898ff8505fa491847ac2727eaf11f5ffc2c4cf7a1401cae3b28b"

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
