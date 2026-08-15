cask "actual-files" do
  version "0.77.145"

  on_arm do
    sha256 "4ef169ee7e25b6e2a122d4c5afeeedef9f53aedfffa37af6379443493b77c6b8"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6da416b10e64816bb923eafe1bf37c8b0066a9263b2acfd5e418acc1269ba302"
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
