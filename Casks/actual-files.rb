cask "actual-files" do
  version "0.77.63"

  on_arm do
    sha256 "778dc5ec852dbaa53add1d0845b08341fbf33cd6bc75145ca9f47649336b2482"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "45fecd70a298408d81f4f681758f3b5f360c00f2b64347e162af8bcc2c149cea"
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
