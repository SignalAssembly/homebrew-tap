cask "actual-files" do
  version "0.70.0"

  on_arm do
    sha256 "e1efb8c199d6cfd30ac393a7e2ed3b03f9334952f536f3136dd3aa49b8099aa8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e637a059ec37301acd0f76d8da9088ba6cbc524b08fd5f284fdc6ca7c3b82f35"
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
