cask "simplecontainers" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "0072b8f1971badf1177fcc01ff69564658cf6a38daba7063883678f94a2e28aa",
         intel: "b07a561623b8ddc919a94981aef6327b7391958b85e1cdaa2185bc4dbd9f03a6"

  url "https://files.simplecontainers.app/cli/rel/#{version}/simplecontainers-cli-#{version}-darwin-#{arch}",
      verified: "files.simplecontainers.app/"
  name "Simple Containers CLI client"
  homepage "https://simplecontainers.app/"

  livecheck do
    url "https://files.simplecontainers.app/cli/latest_release_name"
    regex(/(.+)/)
    strategy :page_match
  end

  auto_updates true
  depends_on :macos

  binary "simplecontainers-cli-#{version}-darwin-#{arch}", target: "simple"
  binary "simplecontainers-cli-#{version}-darwin-#{arch}", target: "simplecontainers"
end
