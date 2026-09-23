cask "xu-jack11-ccbar" do
  version "1.0.59"
  sha256 "847858e53852eb8ae6ac1b68378fba0377266a3521705a6038b6d7cd5e605d60"

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
