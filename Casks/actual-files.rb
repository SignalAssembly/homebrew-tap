cask "actual-files" do
  version "0.77.56"

  on_arm do
    sha256 "a8a61af636994154da109b6575fff9e6785b7ea2ee9d64e50b17fa4969ef01fc"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b4ce0da69323b0f24114f41c23a935315807b9b6a43e661cd0189e9cb695a182"
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
