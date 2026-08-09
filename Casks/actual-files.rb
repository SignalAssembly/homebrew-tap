cask "actual-files" do
  version "0.77.123"

  on_arm do
    sha256 "d6920a27a04cf9c012fd7be3bab6aae30faca3b49ac1cbf3e1df8fdc177f1a4f"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a7a439285ef6748329f4add110da32a2fb6a1dfc652685e82ad95af0977c96c2"
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
