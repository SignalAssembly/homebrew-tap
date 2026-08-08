cask "actual-files" do
  version "0.77.109"

  on_arm do
    sha256 "ebe35053a0bf6210d9fb149fea1ea3fb412c93b2bae2749d8e215865335d1432"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0fa17d4ad0050940fa686fa77f3776d2c4b630dd850f6c02d5f0bd1ab864d543"
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
