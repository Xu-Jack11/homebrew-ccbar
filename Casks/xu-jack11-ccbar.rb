cask "xu-jack11-ccbar" do
  version "1.0.64"
  sha256 "a734928a5f570f785f40a911f285d9749ec5cdf5a50a5766060a1274a73438f1"

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
