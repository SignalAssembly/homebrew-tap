cask "actual-files" do
  version "0.77.126"

  on_arm do
    sha256 "9cbb430e762f289357c1d8168f686c35aea80bbfa7ff2166730919fd6337d6d3"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cd59bfb5e04a41dd5bb633c56d20853be07cbf1b50aa5c71ad64a14ad6be5966"
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
