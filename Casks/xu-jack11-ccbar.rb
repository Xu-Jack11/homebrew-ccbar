cask "xu-jack11-ccbar" do
  version "1.1.12"
  sha256 "a6eade174512fc6382f804886e6df63ebe3b58242e36aee60c502d9c8890472f"

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
