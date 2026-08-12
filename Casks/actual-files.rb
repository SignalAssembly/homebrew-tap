cask "actual-files" do
  version "0.77.140"

  on_arm do
    sha256 "712f2d96ef88a4f84dccc37b623d31105aedb8cf10664dd7a1e1a195e512f69b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8f596496ac4800fc60f9c4fad42f9c1e0db77c8a1551321dc1614ea72175278d"
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
