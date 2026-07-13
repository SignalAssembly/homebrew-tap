cask "actual-files" do
  version "0.76.11"

  on_arm do
    sha256 "ceebf236ae022a7ed6d7c947360b7ec6603690153ab8a3c8124b20aee016cd2f"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "937dbc930fec92587431ae04bc0416882d6f54fb0979fde43f0a17e37171096a"
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
