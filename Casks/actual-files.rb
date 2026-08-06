cask "actual-files" do
  version "0.77.94"

  on_arm do
    sha256 "643650dfe67f5dcf81749924bf5d37ea57f2a872e2736eaba491c98e54dc015b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6ba3a9a4450669c56779f05e90aec5a0a43162bc6d8e57d443b6e692abaa13e8"
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
