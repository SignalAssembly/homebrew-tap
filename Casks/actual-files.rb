cask "actual-files" do
  version "0.77.17"

  on_arm do
    sha256 "e44b644d76c689fe986b8dd364defce453c384b3e8cb59d0a807e861b43c3d90"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "31e34e96fb2ba9822fa9d8042401059ed6c0c2904972df17726a1f2bab1afff6"
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
