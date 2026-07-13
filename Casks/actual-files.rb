cask "actual-files" do
  version "0.76.1"

  on_arm do
    sha256 "be936c20478856aa5f45c9c3480eda051b3525173708df5bd8dea13ec1eebd6c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "26dd7c130523943d53c759b523708dca09a287872ddd20c3f5979baa67ecf3b8"
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
