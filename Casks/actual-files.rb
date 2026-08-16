cask "actual-files" do
  version "0.77.150"

  on_arm do
    sha256 "f17fd68dd857d93fff9e1b6b728d343140abe67c45d6d6287dcf0a0e7ff874e1"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "704e78ec120ef1e2827d1a508c3dcfdb2a1302c05218be76d93eabbd4bdd6449"
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
