cask "xu-jack11-ccbar" do
  version "1.1.23"
  sha256 "d64a838bcd795a853cc993309be764403a6ed2284b7311d5c99d17b08f74133f"

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
