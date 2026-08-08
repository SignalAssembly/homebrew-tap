cask "actual-files" do
  version "0.77.117"

  on_arm do
    sha256 "63a4518e9746f024dfa172f32c7935acb69ffe269adb8cdf4058838923c4a6a8"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ad92513a14d63a6d2cb86ed0956c88dea0b65b09c8c93fa6527f85b4ab7e34ae"
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
