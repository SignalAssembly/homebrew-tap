cask "actual-files" do
  version "0.77.20"

  on_arm do
    sha256 "c7dece6e10d70d3063d1fcadeafa79e68c352ae139c0ca636d228f0720f590b4"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3cb5f5396a3cf78130ab1e0214d3a445ee67be778703aceb5f573c8f616a74fe"
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
