cask "actual-files" do
  version "0.76.10"

  on_arm do
    sha256 "3e6b60f730c28915f9a63ee0cc09571bd346d19cc5297b030d24ad318f1e39a4"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9f63ec00d3dd34f1a9a3c2f55fa110c5f590aebc8949be9f083de93fb38ecba4"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
