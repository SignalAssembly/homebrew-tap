cask "actual-files" do
  version "0.76.57"

  on_arm do
    sha256 "cb6921bd5a4e7ea11620779aae5c08d97e732a9b6555f4f890d2514e614dde6e"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d3825efbfcdf9d3986e321a746b086661aa653eae3cddb97e9de7e34e71ef4af"
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
