cask "actual-files" do
  version "0.77.111"

  on_arm do
    sha256 "1fcf1fb8fc680e451bf19217fa37420357489e8319bcf33c81118bd102c7dec6"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6e835ee0cfba3cd2c530cf09f34aab0bef2b1fd36012bff93ef128c1b7237046"
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
