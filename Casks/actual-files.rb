cask "actual-files" do
  version "0.76.16"

  on_arm do
    sha256 "583ebc775ed7913d3088d6fc892e4ffd5d294e4c224393d7139beba31a6d8ec6"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "eedefa49c6cbb7ae300ce029884f069ac56c118b8fdf1b7425dabf4188044f92"
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
