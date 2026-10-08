cask "xu-jack11-ccbar" do
  version "1.1.9"
  sha256 "d7e8bc50afd0f7505f838381c58863ddbe219ece0b8f007aa6b768172e4dee1d"

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
