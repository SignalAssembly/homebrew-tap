cask "actual-files" do
  version "0.76.54"

  on_arm do
    sha256 "4b7dc21eab5487281182c20b4931210833a2617cce637599e373954f80c5d687"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d0fdd83725c3879b366adafa3cb922b1bc3a3aecb61fe8121f11bf99aacd6777"
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
