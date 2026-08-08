cask "actual-files" do
  version "0.77.112"

  on_arm do
    sha256 "d082413004b9c09e08d57b32be7b1b33afa642a2e7f7720e844871c9ae231b65"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "97fadc6c2abece10e1257b0f08e9caa75bc7257e768808bac34c6278d7fd792f"
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
