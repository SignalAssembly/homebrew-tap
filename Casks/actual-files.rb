cask "actual-files" do
  version "0.77.87"

  on_arm do
    sha256 "05c1e2bccf9d0f6e6364fd694ebde5f11600ec00f4d2231ff9c04b20b9528883"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2c085092197407774fe678a733ea281ad8832176fc1fe53035b37ba19cb548ca"
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
