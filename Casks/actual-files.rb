cask "actual-files" do
  version "0.77.71"

  on_arm do
    sha256 "da5f6526115d8afcbae004fa4885524ed19fca02a9886c4723604a0bfddc6506"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "381ba53bf7cb3762df00dbbbe8b1aff34bb0348f4072fa2b11b74ae8ae9490f3"
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
