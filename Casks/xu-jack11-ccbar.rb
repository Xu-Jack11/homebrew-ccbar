cask "xu-jack11-ccbar" do
  version "1.1.10"
  sha256 "be73e212ec264453aa89e53f2c6fe97312e0396cbee85ff0f777f8395190848d"

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
