cask "xu-jack11-ccbar" do
  version "1.1.34"
  sha256 "155ad6a9f0f33699c21b10a60cf3497fc7d574109f215336844c97dce64ae55e"

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
