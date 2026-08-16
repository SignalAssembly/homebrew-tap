cask "actual-files" do
  version "0.77.149"

  on_arm do
    sha256 "01dd5fc7359b8609e8009f35d941554b2d281450a265236fd55fe4338205bd5c"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "79d4fad3d6e0eff547ab2d7eecc14ebf8affc8218ad9634cec15e0d7539d3022"
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
