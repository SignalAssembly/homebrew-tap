cask "actual-files" do
  version "0.77.89"

  on_arm do
    sha256 "ea1ef02ded65a81f5a73ccd758f55ac8739ca55af54fe8c3e44ff38b068e6748"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4173485a14b2f6dcae76da022e216096070634b9fe049a447267addd14a0d30e"
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
