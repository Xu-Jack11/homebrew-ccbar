cask "xu-jack11-ccbar" do
  version "1.1.45"
  sha256 "29c88914764fce276dacc9e37cbf1b6856bc1bb6f7eb7ad8cd9e789a3e8aea7c"

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
