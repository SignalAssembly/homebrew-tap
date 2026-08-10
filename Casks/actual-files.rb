cask "actual-files" do
  version "0.77.127"

  on_arm do
    sha256 "57c88e8bce565ccbd64149aef86edcd331d0a251505f303953bce238fd99eecc"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "665b2ea0f1088e01377b8816f3b5f93ba429f7727420333df088f09813e00c0e"
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
