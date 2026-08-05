cask "actual-files" do
  version "0.77.88"

  on_arm do
    sha256 "20646ebd9ca4082f55e1ac205f431cfca04663cbe945e42f41570b95af385705"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f440af01144e93aaa30a5532aef6d73cd1138da467d577813ec7d24bda64fa27"
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
