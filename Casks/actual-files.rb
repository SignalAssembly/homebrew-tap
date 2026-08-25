cask "actual-files" do
  version "0.77.164"

  on_arm do
    sha256 "52159dc53eacac98d16d515e1fff37948a724ea1d8fde104de876972d735afc4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4134cd0a3b499d6e6e7e3258157f5452f97f6b37f7a122a404d9d999fb345736"
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
