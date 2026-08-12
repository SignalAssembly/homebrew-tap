cask "actual-files" do
  version "0.77.143"

  on_arm do
    sha256 "e718f8d70f884d4b6845d368b4863335b3a2d9888864611445f080922c575350"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "62a60ca36cad5b58941d06a23d3fdd996f7c5091b8feaf6ccb86dc10a6e0218f"
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
