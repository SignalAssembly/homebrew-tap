cask "actual-files" do
  version "0.77.48"

  on_arm do
    sha256 "e6eb907637f3fa45e868bc4bf0b68bc0ec7a3cc9385c823eb18355690a0e4728"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e0ef77cda161b04ec930aa2a951526b19be065d87543c5d27198e144ae6729ee"
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
