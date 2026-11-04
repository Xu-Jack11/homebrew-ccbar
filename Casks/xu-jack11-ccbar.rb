cask "xu-jack11-ccbar" do
  version "1.1.35"
  sha256 "3dee49638fc4c7de3bdde4efed6c69790c184da4665eb30d110ab5d6abe082a7"

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
