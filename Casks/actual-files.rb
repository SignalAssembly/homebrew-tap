cask "actual-files" do
  version "0.77.19"

  on_arm do
    sha256 "c070a12ad6fc7fa2215c0e4fdc1491ba9c82c3fa349f5054c7726b27b22c253c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "31f06703518a916a62ac44c66b6dbe42732fdd0621309307e4b4473c9cf0e73f"
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
