cask "actual-files" do
  version "0.77.114"

  on_arm do
    sha256 "81ce2103a04896065433dd64c82903d63a48e0600e79cce4ddb975931021687c"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dbd87e06c53b002f6f7b0a82a100d7a5c992cffa3ed75ad1fcfef171430c668a"
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
