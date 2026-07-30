cask "actual-files" do
  version "0.77.51"

  on_arm do
    sha256 "dac6203165885fa7b0b77178d51395f78f43e07d0c1ec73c6c00ae0e890dcf70"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3776d959233741d3afe3187f3cfb2c584369af92a67e6fa494a45cea53067573"
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
