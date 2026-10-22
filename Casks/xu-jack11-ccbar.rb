cask "xu-jack11-ccbar" do
  version "1.1.25"
  sha256 "d2a3ad941f915f9899c9837fcdfdbf2b55d9654f15a79e727c1443dbead7f4ba"

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
