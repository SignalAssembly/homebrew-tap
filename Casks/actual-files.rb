cask "actual-files" do
  version "0.77.69"

  on_arm do
    sha256 "8fee7771d2ce6b046d6c343ead0fbb5116711242898ed8332395da21caaafca8"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "aa45458d37f3c32c5f5e85558138ee60897700dbf7343baaedfb9f3b7a663821"
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
