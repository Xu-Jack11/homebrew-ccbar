cask "xu-jack11-ccbar" do
  version "1.1.11"
  sha256 "3dc2f93af9814fc543d7ad294a4334764e01d8cec8ef30e436eedfe8fac48b41"

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
