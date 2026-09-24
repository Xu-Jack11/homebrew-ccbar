cask "xu-jack11-ccbar" do
  version "1.0.62"
  sha256 "bea9b170ac69b349060d2d2e9ab52e0efc401c9d2440739f1bab2ce23d4d413d"

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
