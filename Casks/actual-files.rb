cask "actual-files" do
  version "0.77.83"

  on_arm do
    sha256 "dad64eef2e624c67ee4b652022f67ee9b1eba854cadf2485d32bdd4f5df7f4e6"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "24a8b66f34f9b3e4799682697435b29f3b3c1529f023feb5e1347de6673a4c85"
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
