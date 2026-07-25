cask "actual-files" do
  version "0.77.34"

  on_arm do
    sha256 "2f6c6f1ef4df006af8b0a0a943b6e834c21a9905a9f29242012dcac5bb3546c5"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dd179a1feb2a438ef1f762d1c20dde52f61d631961da5bd237cf14edf6cbd073"
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
