cask "xu-jack11-ccbar" do
  version "1.1.13"
  sha256 "e3c35e72099b73abff72c2c352f00f3d6230de0069f4419d2795aa9905a5aea5"

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
