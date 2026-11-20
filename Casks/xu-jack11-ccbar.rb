cask "xu-jack11-ccbar" do
  version "1.1.50"
  sha256 "97b339c0c1d02a873dd4b73ed90bc58785dc17d38e4b2485bdd9debaf8f6a21a"

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
