cask "actual-files" do
  version "0.77.163"

  on_arm do
    sha256 "4a7228dd704e9fecfcb74eb21d5e05e665c55e51f25b657bd65323c5f183bfe0"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f9cdc40715ec1d62e7a5ffcc2743c4d18ef7c4e5fac023beae686e549ce4d99e"
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
