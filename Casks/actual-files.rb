cask "actual-files" do
  version "0.76.25"

  on_arm do
    sha256 "27ef83df5bdf88efd5adace55a9c40e46e690fe54cceb84477d0ef9ba724ebd5"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9638441ded325c3d2b015461f00aa01df705748a689a787f9bc6dfc8bc65e524"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
