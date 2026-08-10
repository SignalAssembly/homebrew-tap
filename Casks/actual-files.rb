cask "actual-files" do
  version "0.77.135"

  on_arm do
    sha256 "417110e5d6c490ee1ee0d3e777cdd13e241ba4d5d47c882117105da7ef5c6b01"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5c0e3ed4ae69b7cacfb810dcb3ab96345bc9523d1bc097dfece5ee2bf479e5f4"
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
