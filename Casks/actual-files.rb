cask "actual-files" do
  version "0.77.65"

  on_arm do
    sha256 "1d6c4126f8621989a1d5ddc302187aca84c1b9201bd7cb4c1b860e5e23b4da51"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dd57b90f5bf4bd80b049e229435b21aab7cafc1276336ad1fa0a6e24c966316b"
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
