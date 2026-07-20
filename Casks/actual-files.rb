cask "actual-files" do
  version "0.76.53"

  on_arm do
    sha256 "ff97c8c59c7d475674311d84cb11a909f17c9f188396c2336a9e64ca1c42bf7c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "25832610198b6e2b0fd7b13cd40bca4359853f79c0de762c1ef77e90eabebe22"
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
