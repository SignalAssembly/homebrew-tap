cask "actual-files" do
  version "0.77.86"

  on_arm do
    sha256 "4ad5ed6a110cf72842553cc38b2111658d1e3671a5cb20004564c3d9a8fb7714"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c0a0ff510189ba4ce78d5868ea1b9b75f073827934b8b64b1ea621b530f1f851"
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
