cask "actual-files" do
  version "0.77.160"

  on_arm do
    sha256 "9342a1ba3172d3b29645e50649f9badd55494ad3885c354f016221c3fd5ed2f1"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2ad893487d491b8ab24c1459fc6c6f5cb59e6259e0e59f529e971fc9a5a422e8"
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
