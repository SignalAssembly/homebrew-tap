cask "actual-files" do
  version "0.77.25"

  on_arm do
    sha256 "dcd2a5eac2689ab90cec949f7a0d49e77d3e2b6bbbc83e91011efa0b8eaf3bc8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e51ce4c3c0276dc23524c1f3035b8b633ef09ec6ab108d1df50e3801c29fe210"
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
