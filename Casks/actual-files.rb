cask "actual-files" do
  version "0.76.8"

  on_arm do
    sha256 "bee136a9b0c4ff7e0283245d077210c73544fc9707c8ee582065e3340360ed08"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "98c65bb6c5551a562b0126fe83effbebe79d1a8982a737307f2d6a0d8d0d64f6"
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
