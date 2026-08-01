cask "actual-files" do
  version "0.77.59"

  on_arm do
    sha256 "4ceb7b57cb1dde66cfd7ca09b3c22370b95f48bd84137f6238d04698f897a40f"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b8d7affb2ba7d7d3fc971b8a0f534118a35b84c839575943f837fa45425d59ad"
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
