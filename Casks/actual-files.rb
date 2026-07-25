cask "actual-files" do
  version "0.77.16"

  on_arm do
    sha256 "8c886fdbf6fc0a14d6f8874514fa057a1d197c474cac4b795a8d52e253e02ad8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "107fc6151413cc9068a6eea266815a562c4b7fb1d3951ba889ddad69c7d17aa1"
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
