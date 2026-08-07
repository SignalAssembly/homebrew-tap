cask "actual-files" do
  version "0.77.100"

  on_arm do
    sha256 "db0dbb3c5ff0cf79c34f1aca194da3ee5e0e28d05e33cfa122935c61986a9067"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4aba21dbb1942dfdcf7949e5ee886d6ecbb0be224650852b60f96673f02778ac"
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
