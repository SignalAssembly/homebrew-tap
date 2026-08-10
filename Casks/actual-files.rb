cask "actual-files" do
  version "0.77.131"

  on_arm do
    sha256 "e31dde2e5b9f704c62be62d21674d8efdd1330d2193846a9c677dfc6d27d71b3"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "14b068c1bee6d189a0df9b1ba9c58ab82ae561825b464cf01d8190f8a88b1b60"
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
