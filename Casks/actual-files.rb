cask "actual-files" do
  version "0.77.98"

  on_arm do
    sha256 "bf3835a07a018eff9d605d80d359f1b4d7cb12703f3fd216bf7e9dcddc52e9ff"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f97c27e08f5698d52b385bad26d5cf9263dc143925c28905e94eff1576ee1033"
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
