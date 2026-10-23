cask "xu-jack11-ccbar" do
  version "1.1.28"
  sha256 "ee6be16495e953d6df522a120bd23bc4f8e73e8dce96ec1cd2ad04c6cd94e6fc"

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
