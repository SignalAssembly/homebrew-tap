cask "actual-files" do
  version "0.77.99"

  on_arm do
    sha256 "3e8f06320e852cf1935cd8dc0bb256f7e33c1f14e889ef33cdf41153eb08445d"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7c4d8d09ad1bfe295248e0623de1e8a0f49c5eb1f99225a781ca1e0622e4439e"
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
