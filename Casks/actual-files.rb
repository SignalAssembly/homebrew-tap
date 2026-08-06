cask "actual-files" do
  version "0.77.95"

  on_arm do
    sha256 "e8ce6976057628ba0fbe49cc27b4a4bf4e762e6fb84f8ebd233d91effd71e422"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0d3376001e7c69d22d7d218a150c9dfe35ec17720eeb61941ff25a7d112ce30b"
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
