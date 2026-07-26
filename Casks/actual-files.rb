cask "actual-files" do
  version "0.77.27"

  on_arm do
    sha256 "ee88a701912a2c5649e645729a7c06b62b7683237aef5be7a07b22830b7835db"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b28323dd9dfba2088b1ccd76953de2c81c468f271d46fea27cfd7b5b224dff21"
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
