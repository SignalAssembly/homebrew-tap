cask "actual-files" do
  version "0.76.29"

  on_arm do
    sha256 "a1bdbe09e2118bad0bec81e55b25f1b0ebdcd3e3ec89aac292336b28140713e1"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "026603c8fbd2d09b34436c7c9cc1cfde2535a860b9181973d1a7f64ea64817bb"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
