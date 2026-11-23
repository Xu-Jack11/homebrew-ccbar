cask "xu-jack11-ccbar" do
  version "1.1.54"
  sha256 "15a312593f6b2eb0be800e94ba4f490035d05cebef3bcb8a3db2a87955f6a155"

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
