cask "actual-files" do
  version "0.77.47"

  on_arm do
    sha256 "35dda49bfeae32c8c0fac7c92a368d2bd3356e787163b54d0947bcb8c1772560"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e3e61c118222cad93d4f7e1ee34a66d6aca81690e81d4b4f94523215677100b6"
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
