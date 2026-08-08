cask "actual-files" do
  version "0.77.116"

  on_arm do
    sha256 "f9c5ed5be8fc6d63934cfa3d85b433f666ffb5634e832df1d133694ebb797c65"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "87e2a9daccaf247a5084740f85929182ecba3ceb6586e8b4979dabe2ebe1a92c"
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
