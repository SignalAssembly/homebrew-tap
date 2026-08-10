cask "actual-files" do
  version "0.77.129"

  on_arm do
    sha256 "6b952555b7303eff333a7274808f9ef99a58042725ad6bdb5c5916bd36c5c0f4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9a006b015f2c8ac8f55f76d94bfd7d8c5cd6682663787b6d871995f5c97b8817"
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
