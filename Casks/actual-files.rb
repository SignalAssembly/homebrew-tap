cask "actual-files" do
  version "0.77.91"

  on_arm do
    sha256 "22d7f02c548a4358ab7e8b869ddf7035cfddb504d6a0833704aff72af45141e4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "61548621fe12d9960748e0fc55b82905427e2aff68e2a3357a79460bb2c6b74d"
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
