cask "actual-files" do
  version "0.77.92"

  on_arm do
    sha256 "14a30806174d271de746a6c2bf5e502b3ef7c762bb0459d5d2667e0f7765d99d"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9201394d994d38e270ac671f21bf87eef9c1c40b9a76feebdfac205fb6521b8a"
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
