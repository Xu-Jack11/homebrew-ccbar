cask "xu-jack11-ccbar" do
  version "1.1.33"
  sha256 "be41512759436b80dd54294fb7a94b1961b0d60f8046e811c10c0c46cc7e3967"

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
