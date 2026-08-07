cask "actual-files" do
  version "0.77.105"

  on_arm do
    sha256 "6cc2a2141211bf19bb23efa381030cbb38960ca140a7c5108fe13a312018fd02"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8af921d5d2fa6cda72fba2b0680a3b6204f3929a0d28b36b7408ee76633305d8"
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
