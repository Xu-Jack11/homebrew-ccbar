cask "xu-jack11-ccbar" do
  version "1.1.44"
  sha256 "5e18cc3d098e4264049426e34f9c7362d04f5986ca162b12af48d6749e3e3d60"

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
