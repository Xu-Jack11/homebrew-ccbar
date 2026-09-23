cask "xu-jack11-ccbar" do
  version "1.0.58"
  sha256 "58dbafb7db671135085b775df1e8c222228b76679052490e1397e113487559d1"

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
