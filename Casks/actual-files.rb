cask "actual-files" do
  version "0.77.40"

  on_arm do
    sha256 "38c4c7bc8e2ef8474417ec4f183a8ad3d258a531622e22e6a65bb0ae27e20148"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "10f6521998eb4f12a8d2e648664754d8e988a1a7c1ce4331f3e6f4ef193c1b60"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
