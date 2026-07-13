cask "actual-files" do
  version "0.76.7"

  on_arm do
    sha256 "e9c07ad5ba65f420e26a23e3562e7a8c6d29bec67e97800d94987c217aa4a841"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3d1a6969753706e0c0a9d5c21a30b0172c31f3a141c72be4320817be246a4334"
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
