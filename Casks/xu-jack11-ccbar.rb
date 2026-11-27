cask "xu-jack11-ccbar" do
  version "1.1.61"
  sha256 "6dd6216be4e910cd4bf67fc85ff848693983cf6a0f7f6bc6c485987ebb0dd96e"

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
