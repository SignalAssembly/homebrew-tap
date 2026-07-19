cask "actual-files" do
  version "0.76.37"

  on_arm do
    sha256 "a91c3a85f00fc909bd677440f939c11abb8a28fea2a5b1ee79f365cad5f121bb"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5749bf3e4662251c10bdcef5f00d7b362f7f4c78101587edb0345a31fea4a1f5"
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
