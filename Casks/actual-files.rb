cask "actual-files" do
  version "0.77.64"

  on_arm do
    sha256 "84ba7d46483e03eb6f5054e5dddefcaa5001634a2a4e0ece6853170ead5b9062"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "693fe62cf512425aa66744918783fb757075838ca067b0edbe13bd4e7096c8ce"
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
