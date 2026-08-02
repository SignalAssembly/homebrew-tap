cask "actual-files" do
  version "0.77.73"

  on_arm do
    sha256 "3519df3a358ab5417bf7112aba3d9a097271a4e532f77c91e9840e913aa54800"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4d23ece6b2f80717dda64592a6fc5a1ad4268ccac1c58729987af6ac42ba2600"
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
