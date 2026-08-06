cask "actual-files" do
  version "0.77.90"

  on_arm do
    sha256 "6228259e66fb90d6bd899d13518f8aba443c2f49c9bb04c8e347f56e8d77a77c"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "788aabad62242f0394049a909a63fff84b76ac7265df298d30c9a9a02e89f0a9"
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
