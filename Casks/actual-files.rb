cask "actual-files" do
  version "0.76.58"

  on_arm do
    sha256 "3b1a835d4af55c4ed3d4068c5e4bc3d3fab72b021ff5a648434fde47c4bb8526"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "443dcc2dd2e46267d06abefa2cc9281ad56e07737c9f8b0c7498c843f6c2fa6b"
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
