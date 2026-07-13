cask "actual-files" do
  version "0.76.18"

  on_arm do
    sha256 "fd7b760b3bc5f197b65711dce70aa87d397bd6f0fd3d1675ea81dbfcf33dde2e"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3c0191f845cd70346dac9cd0cee2185ff768ba9847e6953f8e98e3783eac3f6d"
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
