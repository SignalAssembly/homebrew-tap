cask "actual-files" do
  version "0.76.23"

  on_arm do
    sha256 "a4ba9408b6a86e36f27d4b77ed2f3d69964bad76165625108702cb83199bd6e0"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "43906a16544ebb8ec462b7a95dfaad609c4931035918ad6b5f4876239ed9aae1"
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
