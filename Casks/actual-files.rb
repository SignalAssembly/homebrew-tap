cask "actual-files" do
  version "0.77.166"

  on_arm do
    sha256 "eab1ca99b00ca0492aa0966ce878ac0ec47c9337e7d23aff8b586415ade4c507"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0e1b43ad49ec2c4c1938d99e22c7d5365b211a3e22fc5a1abc5f5e022b3b062e"
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
