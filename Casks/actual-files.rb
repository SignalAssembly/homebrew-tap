cask "actual-files" do
  version "0.76.24"

  on_arm do
    sha256 "6b06d6b7e8291222ff1d0764329307f241be5c80a3952ad2593db086a13d92c1"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "873f5d914460144151ebc329a92a54bc50e6ad1c8b67beb56e6ff50a80f4cb9f"
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
