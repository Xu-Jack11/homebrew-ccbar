cask "xu-jack11-ccbar" do
  version "1.1.17"
  sha256 "244968f10761eebbd89814fa338d1c50520b183a56ac308423c1caa9ee7fc888"

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
