cask "actual-files" do
  version "0.77.128"

  on_arm do
    sha256 "7e012b668bce78b56a728f5b9b01f0bf425bcf8d60ed92aa745a438240f36cfd"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1efeba55c078099cd4e62c2e41aed7268c26ddf47ac60a4734661330bed7e557"
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
