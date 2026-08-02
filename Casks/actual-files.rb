cask "actual-files" do
  version "0.77.70"

  on_arm do
    sha256 "c9d25681782ddfc3235bbd6a91a43232365c99b5d5858270a0e6743445e21be4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "567df8bac1a34b67863a7d8d273bb206e0026adfbab9502d7b78107b9bea31e0"
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
