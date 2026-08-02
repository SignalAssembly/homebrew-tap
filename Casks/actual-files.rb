cask "actual-files" do
  version "0.77.76"

  on_arm do
    sha256 "45320841d29a76d93e3fe07a8e96a0b223bdac5fdef876066eb5e5af7546ec64"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cdef63b01d139111fc6cf848d99b5cf2c3551ec410d3abce04ad5bdfa056c823"
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
