cask "actual-files" do
  version "0.77.38"

  on_arm do
    sha256 "f813cef52bfa69a9acfdb26240861ad45da97f172c86118a8734a234807a441a"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "effe71ab3d7caaa6eb702c9c5855f8d8e2f5cb89219ae64dc46bea3cffcf757b"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
