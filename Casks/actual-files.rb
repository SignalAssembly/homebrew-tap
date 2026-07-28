cask "actual-files" do
  version "0.77.47"

  on_arm do
    sha256 "ed4c69a11bf1665908ed5303521bde3ab894e9b3169ee61b6677b507d5019d58"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8d4236e25b7453f1e59bce8414abe7f3bb61f7319ee75628a313759369bc7625"
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
