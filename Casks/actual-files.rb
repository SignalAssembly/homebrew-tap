cask "actual-files" do
  version "0.77.133"

  on_arm do
    sha256 "50e71747ca050de5385dcde60f3f5d5226106d82894ca86685477210b908f032"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "99328c0c7a7253bfb2603a7f08a80d459a2e18b75e8c03ce53c3cba71408a133"
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
