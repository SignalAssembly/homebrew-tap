cask "actual-files" do
  version "0.77.148"

  on_arm do
    sha256 "1aae2ef65f7e3bbfc518cb6f919226a3699884fbb64a3ee200d30113e0d3094a"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "eaecf6d41d422cb9ba4c9cb9cc86d7ffd85a423e283a47637936a55f837922ed"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Cross-platform file manager for power users"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
