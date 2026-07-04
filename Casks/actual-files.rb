cask "actual-files" do
  version "0.72.0"

  on_arm do
    sha256 "45469e8ca8e4c7be55ade346bfd504ba278ebc72c3cb9580b46f5dc1741bf4d9"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b973972c2ada441951c15ee61072377d7170214063dc7e0cd35e133d27fa7002"
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
