cask "actual-files" do
  version "0.77.26"

  on_arm do
    sha256 "3143a7badf63e93b43429232259e48a3a315d3338212eea36da7a1dd351e2a8f"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8fcf0b0170f7a5d942ab906d88c0ba19b052aed57e0ab8f28bbbf42683423237"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
