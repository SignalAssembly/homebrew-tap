cask "actual-files" do
  version "0.77.110"

  on_arm do
    sha256 "f8898abedb097f275b6fc411d30d2e8c3cb200fe25a76abb7f21c7c4516be7af"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "89eacec7167efe07ef58b3da3b7e6d8af9264445f55d99bf93472575cd83edb8"
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
