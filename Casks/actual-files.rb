cask "actual-files" do
  version "0.77.142"

  on_arm do
    sha256 "e319dee53dc8ca23ab0c47e8d844ef456e6846b0454c70ce33aa367a72ba7631"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7dc58b320a6b32c574590d063e0794238fb34ad9a0d55f9b4095f90676b47416"
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
