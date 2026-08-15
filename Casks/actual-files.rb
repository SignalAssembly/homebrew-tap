cask "actual-files" do
  version "0.77.146"

  on_arm do
    sha256 "fd8db59cc0e04e55a79a8ca79f01719b8f22d0158642f2b17589f90425a40767"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dd75c5777f37dabfeff37e97b7d8f5e02f830b6a42a7818eb68b95e7d05f1d7b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Cross-platform file manager for power users"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
