cask "actual-files" do
  version "0.77.49"

  on_arm do
    sha256 "ef7198830dd99fda7b5d055945082af248a0ad6e1a5e1bb792ba52e3693366e4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2a65195050378644f80a705a8ef14ed0ec9585e3702bdf593f8e3304eb9e15da"
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
