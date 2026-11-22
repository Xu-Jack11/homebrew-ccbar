cask "xu-jack11-ccbar" do
  version "1.1.52"
  sha256 "77225858b2d74de694a7251a8509f59cb0f9330a15c51a127fe6ab16f5806933"

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
