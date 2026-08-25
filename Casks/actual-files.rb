cask "actual-files" do
  version "0.77.165"

  on_arm do
    sha256 "8e3df3a26d033bd7a9dbe921b1213291311468f12616397f153279554635757f"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b275b76c3677ab1e182765b5a71a927361ce9d4eeae4e0192ed3e55c6328a6e4"
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
