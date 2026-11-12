cask "xu-jack11-ccbar" do
  version "1.1.41"
  sha256 "68d552de7af652693e3aca481a5b276bd5bcd9dd74049dc744360940e101b77d"

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
