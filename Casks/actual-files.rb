cask "actual-files" do
  version "0.77.93"

  on_arm do
    sha256 "99a66ad4180adae4b1e71cc5b799c3aac85a182b198a56eace9c43f1e7c109b5"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "85eb6841e8e72abfb2437eb815a22ceca6e4576c41739e15c9324a1c7707ad71"
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
