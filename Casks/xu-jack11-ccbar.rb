cask "xu-jack11-ccbar" do
  version "1.1.14"
  sha256 "75d594ff095a0b369729cafae856553d9002bde8eed879f0d03c5a3ae10b62bf"

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
