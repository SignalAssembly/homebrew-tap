cask "actual-files" do
  version "0.77.21"

  on_arm do
    sha256 "bc9f0c3fd976cc09ce9c69877c8e46ab80d28dfcc514b0204d358f8dd8ce487e"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1a8ddba4598ec21811fdd560e6fd9da716f8a458e966b78c766a7def5d8a3200"
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
