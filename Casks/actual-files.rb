cask "actual-files" do
  version "0.77.36"

  on_arm do
    sha256 "4f826d9be130265587317d056eb34f7579ccd1c965a0e8dd966a7d1acedede8f"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1c685f5b31b00d568dd0355bf44e931b56ae376c344b04e76e701675da129b77"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
