cask "actual-files" do
  version "0.77.45"

  on_arm do
    sha256 "8a9215b473090671ea17bd6c0896fb4717926a58853aaff5d5d4b24cbca6ffd2"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "58fb8726a6ac54d9f55a5fd4572ae8bbe87d6b03d4d5aa35cb607fa39feb2c03"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
