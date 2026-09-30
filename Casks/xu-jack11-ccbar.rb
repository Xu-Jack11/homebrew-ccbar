cask "xu-jack11-ccbar" do
  version "1.1.1"
  sha256 "14271c9c8e4a9a7ff2916d929dacc4eb85ed5ad255dc2346f03f13b3dad5df4c"

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
