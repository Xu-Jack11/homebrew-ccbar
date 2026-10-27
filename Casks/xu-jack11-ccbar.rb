cask "xu-jack11-ccbar" do
  version "1.1.32"
  sha256 "fd9ef6f861934d5f8a8fc83d40e3d9afc4b8101c9ad9feca7ee80f52d19b7db4"

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
