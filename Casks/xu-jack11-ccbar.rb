cask "xu-jack11-ccbar" do
  version "1.1.39"
  sha256 "ae663f8ea44cb59b2d4e76a32168e7df3641cd3d4e8851543327f4f1fde41976"

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
