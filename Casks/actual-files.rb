cask "actual-files" do
  version "0.76.9"

  on_arm do
    sha256 "5afb9e63b6501405ece86d26934bfd230949db439bd1ca8accf66fc40e0d6bd9"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9c35dfabbc53de5118b4a81ea937ac9371cbe5a430f56bd8162eda9ed5b70b8b"
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
