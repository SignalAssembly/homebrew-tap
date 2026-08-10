cask "actual-files" do
  version "0.77.136"

  on_arm do
    sha256 "9c2b12e9a43d98011cf2fd8d8c14be897ffae978a1b4ddf4264711a0f83a3f4b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "68563296a87e388cc0fff3db8ea22486b0fefbcbbfa6fa958b871f3ec9448bf8"
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
