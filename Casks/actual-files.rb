cask "actual-files" do
  version "0.76.52"

  on_arm do
    sha256 "2e3c2c7ec8554eba1881597550879c26d900c29f31dfc5332d4a63a8cb750de8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "78c26c308d57fec3f0d34c6c68ec3d0d0507bba8454e30aad4f8ca1b484aae09"
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
