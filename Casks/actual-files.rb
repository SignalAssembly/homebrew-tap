cask "actual-files" do
  version "0.77.43"

  on_arm do
    sha256 "4d6879eb54fb89078d5e22611e5bad98c5013b3c246e667875960f5274eb143a"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f40d83e1d12be1d652b29784e12fa38d3c1705a0675eb20b2915bc904f76dcf5"
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
