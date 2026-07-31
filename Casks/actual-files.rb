cask "actual-files" do
  version "0.77.55"

  on_arm do
    sha256 "f4195dcbc91b6da2371236b02556078dac82c1a473f5a1dd197d9dde4347ff5b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ced440f0a9238e0ffa6d08ddd4d6e54b7272f1ba8fb2e414f5a1db1fbe026d87"
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
