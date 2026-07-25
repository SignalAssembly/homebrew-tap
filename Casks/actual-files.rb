cask "actual-files" do
  version "0.77.13"

  on_arm do
    sha256 "80d0d1018fb1a5bdffe8fd7b2bdc3b9e0cee0b8565dd5a9c117c69ad76d2fdb6"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "559381c0cb5c8b126318418bcbe5801b6dd182036ff3fa4aaa6f2701e59ae8d3"
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
