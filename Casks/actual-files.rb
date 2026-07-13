cask "actual-files" do
  version "0.75.0"

  on_arm do
    sha256 "172dad16e5b85c0b6a60a1c5db6b0b5e045df7d6fdeca5e9602095ef16676f03"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c842276d0a11404d7d45709275fe20ff786c8853fb21d1fb9d1cb3c895930617"
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
