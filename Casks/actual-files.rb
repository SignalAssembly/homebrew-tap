cask "actual-files" do
  version "0.77.147"

  on_arm do
    sha256 "fd1bef3cf23d8c17d41f145269fb51ffa63c57728c89cfc0fe4f81544e4ebf37"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4d88fae9d0345c7b4560db2ae0342ead70b95a223d995dcb7d1cb796dccf135f"
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
