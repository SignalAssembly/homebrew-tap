cask "actual-files" do
  version "0.77.37"

  on_arm do
    sha256 "7a4743491b5c900b24da00fdbe8a627a35e708397ee17af2346cca80e8718f68"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f2509fed4ebd36abc0d8d8488bc6662a04b6dcd7d35943abe19adf14070d6d2a"
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
