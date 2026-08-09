cask "actual-files" do
  version "0.77.119"

  on_arm do
    sha256 "8892c6724dd596f775088c316ed16d6325e6de4e19a05c3c34b20e8d373a2fa9"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "de1384432600cab61f279ab8d5785a0212f2a2ab2f8b621916d2553f503b0047"
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
