cask "actual-files" do
  version "0.77.84"

  on_arm do
    sha256 "3e2def12c942ba963271130a6516909b8756798093649a7ae93b2c45151d11fa"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3ad63c78fdd73862f3cc0742a63ba585a77d81443576fa9c2bd57b6efbd074ee"
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
