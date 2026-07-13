cask "actual-files" do
  version "0.76.14"

  on_arm do
    sha256 "1f50dfef2b72d22a334be7e2d3e3f0b308e60c23fee189d87141809a0a5c4454"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "439e6a326e6d7a08b8e3fbcc12567f9c2ba38edbf280b73c735741fa046967ad"
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
