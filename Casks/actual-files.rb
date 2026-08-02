cask "actual-files" do
  version "0.77.75"

  on_arm do
    sha256 "290367eecd1e65c2a6e5e997fd4d8d2884791d7f4ef6eaaf639e33d55b56a7ee"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d22f7da88d4688744f297dfecaef4a944e923343a5401ec82a21d22745385e80"
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
