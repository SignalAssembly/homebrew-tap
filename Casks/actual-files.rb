cask "actual-files" do
  version "0.77.125"

  on_arm do
    sha256 "d65b16cec58fd20b242e4fcc252aa80d3cf083f8c5b83dfd19e3510f7ce035a6"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3c7c985b2f0ee3a5b5af91258eeb747363588c7aae01632f54ab46423ef5d57e"
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
