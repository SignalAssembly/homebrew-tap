cask "actual-files" do
  version "0.77.39"

  on_arm do
    sha256 "0b2719d2d1a28906d78c3113664ae4f3252b0444b06718bc7d5a78d920e5ba9c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9a57e3dcca8b4dcf6cc3cc589f97e4bf42b023826cb0ea12beb0ed0c8cab9cde"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
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
