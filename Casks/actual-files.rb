cask "actual-files" do
  version "0.77.60"

  on_arm do
    sha256 "37d133e7ac00c288d6d64bb82b34c72d16b4b37a5f9859008733977b47f9e239"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3f3e2358d5ef3067b6e7eef5df36c434e9c1221a49c4d83e4a681956bd62615b"
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
