cask "actual-files" do
  version "0.76.3"

  on_arm do
    sha256 "5c91c9f0e5c7e7f800bf8f29cd76b846881e9ca49dfaf1503bfc6ea349cacbe9"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4116fc1e245914a8bdd724a7579ffa47d66551b7c34ef766cafab492e59485d7"
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
