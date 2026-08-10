cask "actual-files" do
  version "0.77.130"

  on_arm do
    sha256 "7ff12d0d9328c878fa9204ad44f95a962b4ba842822e18915c38575b455fd734"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b89aa44ceac7ad46c1c1b32fe73ff7e5e8d01239e0fe13452a3eaf358e653767"
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
