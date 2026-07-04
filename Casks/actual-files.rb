cask "actual-files" do
  version "0.73.0"

  on_arm do
    sha256 "c7b3854e03633394e71664b4a622f661289f7481da38bc8a0975073bc873cbc4"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c95e89dfe38fdeb2fb528692aab184efb2df216a7775f6ae85e9876a292e6675"
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
