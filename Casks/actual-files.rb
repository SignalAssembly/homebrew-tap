cask "actual-files" do
  version "0.77.132"

  on_arm do
    sha256 "d08b084ee439d1e1724b4b0b488c43ac057b407234aff27dc556d956540375d4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b57874a75614c501fc3b71225a54e0c7d63713aa072cdd1cff338ac5ac2371f8"
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
