cask "xu-jack11-ccbar" do
  version "1.1.4"
  sha256 "da57c9e1e5ac9ff627d72f1e1ade06a76a077f8d503fd4af49c39c26ed523bd2"

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
