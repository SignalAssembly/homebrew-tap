cask "actual-files" do
  version "0.77.18"

  on_arm do
    sha256 "e93654d86bd4975f4fef7c6563ae4d1d88e54588180fc29056c80906ebac51db"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "81eda69f740255d002b6abc979089240d8bf1d9957674ad258971acff025ef0e"
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
