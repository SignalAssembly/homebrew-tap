cask "actual-files" do
  version "0.77.46"

  on_arm do
    sha256 "b0eb6fbcd202c70fd94b09cab14419009803f2c1372ef4ae25d7aaa8f1b0e04c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b5efc9de253c392345c53c0819af706fcf1296860d6a7a77f87bc96d2faff17c"
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
