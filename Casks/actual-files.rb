cask "actual-files" do
  version "0.77.108"

  on_arm do
    sha256 "bfbd9a3eb16da78d3415800e5e695a99ea91555c82bf9324e7c679d43f07bbee"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e408b96169bdb166e25a99be764c193fb296ce6a076a5c0a7a57c3695cd87fdb"
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
