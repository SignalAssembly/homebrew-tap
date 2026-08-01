cask "actual-files" do
  version "0.77.67"

  on_arm do
    sha256 "4d809fdb4f618b25317e559354c1d55a95c0133a9d435d5710589c5a473f61b4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "df2f5351f5347f197fc69d0f334778a9e01e488bfa332cf4208eaafd350b253f"
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
