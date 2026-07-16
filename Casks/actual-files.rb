cask "actual-files" do
  version "0.76.28"

  on_arm do
    sha256 "2936cb6c99934a55ffc3184c2c43f175cf8b38fe31e2a9df6c586e1fc767b53b"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2c47dbf34a1a7f58846c73cdfacf4296303d35bc830e1a51c785831967476155"
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
