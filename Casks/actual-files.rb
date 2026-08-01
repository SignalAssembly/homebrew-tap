cask "actual-files" do
  version "0.77.61"

  on_arm do
    sha256 "2479baff7aa885f5da9281bc30cc5ab04f7a75e92664152d8ed72dc22ecf4233"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8071062848505ba5d95ba8a4fef8d2a9b0d667e146c9ccf24bfa3813996ac21f"
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
