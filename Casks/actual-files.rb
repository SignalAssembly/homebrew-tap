cask "actual-files" do
  version "0.77.120"

  on_arm do
    sha256 "877eb33be8aed825702fea2915f0c9d094b9a144b687053d521fb48da95ab6b8"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e9ca9c5c45fd59e1e9a6065a0f1065c8529e530941a168683a6296d041aa34a9"
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
