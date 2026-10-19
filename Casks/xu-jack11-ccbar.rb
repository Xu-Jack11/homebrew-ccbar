cask "xu-jack11-ccbar" do
  version "1.1.18"
  sha256 "e21134564c7707cfc8e8a4a3eaa49ec7fd1bb221d91f7e63549d4c8514da2889"

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
