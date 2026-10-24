cask "xu-jack11-ccbar" do
  version "1.1.29"
  sha256 "d32ae7624e75cf0f142d2d59f3e38172607c34d96079598bc662410b3f47526e"

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
