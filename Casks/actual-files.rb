cask "actual-files" do
  version "0.77.72"

  on_arm do
    sha256 "4ae53b08ad69bb979bd7e7eae2e62f1935af4e9ee06d20a7636912f71b00a6bf"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c598ec34cbc54fd69bd4265b88fc5b045cb4873328e4ee6fb1bdd2aa752aa5b7"
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
