cask "actual-files" do
  version "0.77.54"

  on_arm do
    sha256 "98349cfe8eddea57e7bce7a93ae876afd1e16826a164ce03c3f94ee6d4f19fac"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "20ecc058158843a25943b55a37022ec9096a98e57feddb2b859b9755eef522df"
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
