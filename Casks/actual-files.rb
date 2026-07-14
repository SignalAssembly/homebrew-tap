cask "actual-files" do
  version "0.76.27"

  on_arm do
    sha256 "088fc71ab8a382c95efc57df6d8a69d82a1e621df8d4ad8ac1e8fc7db6fb7797"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7585228c4d371b699ed16bdaa5aba525f76a74bf4048100fd3b9fd0c2298c0a1"
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
