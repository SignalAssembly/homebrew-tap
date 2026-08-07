cask "actual-files" do
  version "0.77.103"

  on_arm do
    sha256 "dc1788f0db159e6b70f9d27634117d0fa2b38329291afae709200b9a8f908868"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8be4d11dc93b582cde3b288290569994393ee8ffd3c98704abf32e90168e4140"
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
