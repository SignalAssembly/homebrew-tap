cask "actual-files" do
  version "0.77.118"

  on_arm do
    sha256 "d5c714e71ae495c122c2ee78cee03ca249aa9efbd5c4abed64f33927a22851c0"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a7e2116c6f3dfe2d9100f7c30cff7459d4519082cc0b4df096ef76d05bb02da5"
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
