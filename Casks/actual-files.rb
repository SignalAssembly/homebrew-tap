cask "actual-files" do
  version "0.77.102"

  on_arm do
    sha256 "656a0ed702eb131a68301d097138c8c99f113417b6647b781f6555bbecbd37ac"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "036f9c0e402066a3ca58032fd17464e16a8cfcbaacd56b4104791cf1f52be716"
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
