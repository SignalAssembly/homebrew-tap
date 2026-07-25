cask "actual-files" do
  version "0.77.14"

  on_arm do
    sha256 "6eab377fd7078ffaf68dff906b08677858ac7a27d1d8f149575dfaf0301ca29d"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e5e40cf21c95866fbfa375311efc5dfeadefa9b3a186b5a5ed1a14b80a14a1c0"
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
