cask "actual-files" do
  version "0.71.0"

  on_arm do
    sha256 "479f536455d7cea73549f6c37eb27a0a763952e8b10820fcd115c255d9699b3c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "bd5318aab1b1eb870247795d915c8c2e36a8f7fd070bdfc905efa88c29e8f3da"
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
