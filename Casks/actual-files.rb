cask "actual-files" do
  version "0.77.101"

  on_arm do
    sha256 "275f359be152c1721467802e9e2150fb587c46ec45945e1e88ba8d74215a023f"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2bec3939e010d01e033ea615a0ab473612b416de0a80979bd85cfc86e289fd2c"
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
