cask "actual-files" do
  version "0.77.113"

  on_arm do
    sha256 "93ebd481930c44538681b864b038932dd5287e5341aaf09a3894c1afb8237350"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "38735c4a90161bf71e9864f990133067d85cdc702b3cf6673bb8ac76e020bb4f"
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
