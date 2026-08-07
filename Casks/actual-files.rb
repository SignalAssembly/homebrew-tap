cask "actual-files" do
  version "0.77.104"

  on_arm do
    sha256 "53776177d677621fbcc8bf33e620dfc3e06a55bc6df8e61492b50e20ba1e51de"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fe36c6e71522929ea8f17606ec9ab781f9794baf18cd55f715620dffe7c29411"
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
