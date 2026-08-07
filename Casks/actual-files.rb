cask "actual-files" do
  version "0.77.107"

  on_arm do
    sha256 "523498e3f287145bdc55acfcc75d5dc4acf99be0fa0855c4be88d616c5434639"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e35df86c53e7beeeef498562f33dca876f159e22be31d7c15ed0c8507480f357"
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
