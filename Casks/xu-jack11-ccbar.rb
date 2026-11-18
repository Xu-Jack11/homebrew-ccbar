cask "xu-jack11-ccbar" do
  version "1.1.46"
  sha256 "5df46209ea0d041c39a0fbdb64a0d5c9e047235b421aeb0b9f552e256a90d27e"

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
