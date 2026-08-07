cask "actual-files" do
  version "0.77.97"

  on_arm do
    sha256 "49b42e4699d69f241144277ec29f32c5ecc58e87689daef8e2de4392cc574a97"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b29e8c524834f3bb66e93759c9e03f543ffc3a5b43fcd5e39599e1bd0a7bdcad"
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
