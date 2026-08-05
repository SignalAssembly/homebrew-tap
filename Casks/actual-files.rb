cask "actual-files" do
  version "0.77.82"

  on_arm do
    sha256 "3fd00557faf7f80cf948e3cc3792aa7280a7f5049996d48faa474b4268d57b54"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0cc9ec9e16fa22032d470182d08316e1742ef1f9cc2178e0e03abf479ab0af30"
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
