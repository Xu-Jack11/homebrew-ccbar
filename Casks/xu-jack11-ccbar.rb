cask "xu-jack11-ccbar" do
  version "1.1.57"
  sha256 "69f0ad728c48d14b001cadba9dfd7a8cd2778864c25404c83f6c848b004a492a"

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
