cask "xu-jack11-ccbar" do
  version "1.1.40"
  sha256 "34dfebf447d7ca4b7bd4b6f221921827c79c7b1b07a34c5cd4e093295bd6f2f9"

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
