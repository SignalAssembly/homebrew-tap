cask "actual-files" do
  version "0.77.162"

  on_arm do
    sha256 "95cdaea637f8fdc8dbefa17a4cbba84a1877978a28a5480929adff147d605faa"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c75602f4fe21c11b2d02ec281337239e264f7a0ace7b41969bafc9b88ca762ce"
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
