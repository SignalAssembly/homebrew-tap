cask "actual-files" do
  version "0.77.29"

  on_arm do
    sha256 "87addbe00a73de5fa92c8164ad30e01fd9a168debc75a6e58657d357001b0b4c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3b79139221b4428b7b242543038a45ba122fd37ff9fe344d1a5b0c6b023681b2"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
