cask "xu-jack11-ccbar" do
  version "1.1.16"
  sha256 "7e9ec6265439289db877d6d09b012304277c5c14b1af8bb5c7aa85708d8e4134"

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
