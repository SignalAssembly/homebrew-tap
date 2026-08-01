cask "actual-files" do
  version "0.77.57"

  on_arm do
    sha256 "d5735a1fbad0e851e85b1d722da59b750f42a1b8348d409ed299398b90b64484"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "02e851d84dc81d26697d31bb05f34c913edee5611be58d7abd40b4467e04c98a"
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
