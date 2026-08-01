cask "actual-files" do
  version "0.77.58"

  on_arm do
    sha256 "353a6994cfd39d3af07ba912490f0f3324f906a3c815064ec346741a3c830274"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7a5232da80f76e0758496b0d2bdfe008449a44848b455dfbcacdc444d93bfd25"
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
