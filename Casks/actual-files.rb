cask "actual-files" do
  version "0.76.21"

  on_arm do
    sha256 "27a2df8d7421845ee6b028b714a929079fbd79ca39210d0e9237034cc2f62e2b"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3a3b1dc3a32192675f3cef42789af7babe4af6aef22f61fd2778b397ca284aac"
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
