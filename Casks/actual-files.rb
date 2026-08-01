cask "actual-files" do
  version "0.77.68"

  on_arm do
    sha256 "0ced98e8c5b73cd0aa83c1e138a0d50a2ff0b24a244cddb3fe2474c7ae0acf36"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "32c1ead21ece1a47a6168beb797a060ed8762475ca239d2e51ae1bd84f552ff7"
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
