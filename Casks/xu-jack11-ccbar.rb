cask "xu-jack11-ccbar" do
  version "1.0.63"
  sha256 "2bcddb931948662789fae6feee31d388245dfc2831a3f7be3883e73d09e1059b"

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
