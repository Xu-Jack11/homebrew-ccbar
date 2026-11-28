cask "xu-jack11-ccbar" do
  version "1.1.62"
  sha256 "a0ef891f7bda29be243fc459d510727a6be764bc1d4a9ae299854ddb4259512f"

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
