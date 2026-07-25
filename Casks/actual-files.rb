cask "actual-files" do
  version "0.77.24"

  on_arm do
    sha256 "a6bc09558690ed03f9a3919e7e4aa8ea032c7ee2f3f63b2acd149dac95b6adb9"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b9e6c7ef83d4c055229bf5297feb3ad2a5adbe7693b492180d467165080f9903"
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
