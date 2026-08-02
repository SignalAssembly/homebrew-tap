cask "actual-files" do
  version "0.77.74"

  on_arm do
    sha256 "38dbcc44ba0f562f2f270dc8208a15929e98ce75cf82e362e0d0a2881143f009"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b1e12e081de43833d7972078b6cf8605778d9d163cbc4bafc28926e08a4dcf37"
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
