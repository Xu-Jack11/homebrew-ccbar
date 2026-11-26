cask "xu-jack11-ccbar" do
  version "1.1.60"
  sha256 "82bd98b3fd1bccfff5986ebe9364b0eb0a62df320df0c0e7216097f69e3c1b9e"

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
