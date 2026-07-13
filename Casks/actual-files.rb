cask "actual-files" do
  version "0.76.17"

  on_arm do
    sha256 "54c4172f5ca7e46c0d360b64668028c70433ef0c0ffd64665a877b8f87a178cf"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "56ec5a4a3169eb0f6006c62926d41e2388b0a924650e3f2a448ddd2a3003fb0c"
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
