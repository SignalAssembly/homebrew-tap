cask "actual-files" do
  version "0.76.4"

  on_arm do
    sha256 "c9ed4bf3fd83f83d40a6cee1fb7e1a989f0d60f144c913860333e5690c9f875d"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5c4cfaf0924fb56eeb99be878140bc08264a5abaabef0e6e228f83b6b16e446f"
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
