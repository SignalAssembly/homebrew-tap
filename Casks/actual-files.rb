cask "actual-files" do
  version "0.77.85"

  on_arm do
    sha256 "29c2f7a6310570090c60450d1026c4cb3ddb4ac9793fcbe000df70e864638388"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f8179e502bf2c1ff5331fb06e8650430308fa860a94a128b8591f1759224bb18"
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
