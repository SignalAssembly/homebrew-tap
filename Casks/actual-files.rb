cask "actual-files" do
  version "0.77.96"

  on_arm do
    sha256 "867bb171abe357b7b8febd11696723359614c59a53dd609aa02874c49871fd1c"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0a4fa201c05d94375465fec06fb8b89709a165e67a0f9c4f58a7aa586a95593d"
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
