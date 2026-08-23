cask "actual-files" do
  version "0.77.161"

  on_arm do
    sha256 "2d7d14c19d32a63972ac6dac19a0ae5d935a8696f76a04cd9cfe3a78ef67e3ee"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "bfc393180585392c2c809f4060279481ebf89eba2e923b47c0ba823ec0375945"
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
