cask "actual-files" do
  version "0.76.6"

  on_arm do
    sha256 "c53af89e34f7de4f8668a98e2aae5ea568034eb741f4123b07f715a6fa870192"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0d9ca55753533e1e9626b16f30237fb4d0d79b9723d91c48c7e1405963ba46c8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
