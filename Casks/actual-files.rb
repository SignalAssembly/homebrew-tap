cask "actual-files" do
  version "0.77.121"

  on_arm do
    sha256 "65b1892a100aecd1f85a47bec397a5af4740d7c49ca4d940a0f7673eddd924f1"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9bfcb922ec16aab1ee5e7ce886f7dc41970dfc7ea861f4f0c69a3b5c740f9b17"
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
