cask "actual-files" do
  version "0.77.23"

  on_arm do
    sha256 "3b1acd79bffc0db65af7a12c73802bf2450e8a569899448b7ee3dfd9c269a944"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f47652afb7b4e3b2d5536cbebe80d3f7aaa908fc20510ceb3060fd79f9225b06"
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
