cask "xu-jack11-ccbar" do
  version "1.1.30"
  sha256 "0e5a03cd024a45494b6d4147f4d06481117e07733afdc98ab478dbcc2c45c787"

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
