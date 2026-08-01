cask "actual-files" do
  version "0.77.62"

  on_arm do
    sha256 "672bad92538e144a4bc0f2b7b8be64f9b9a16d19dce6649913020e3ccb64ed2b"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "561fce3595fe29004376677cfa6e78bda0431348051ea4d0c9dd09dce6505a32"
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
