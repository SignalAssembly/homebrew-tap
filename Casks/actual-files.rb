cask "actual-files" do
  version "0.76.22"

  on_arm do
    sha256 "eafa16b2f2c52d757293b9d77cf6a2422c2d16db31bc2ec7593e1dfd0be4aae8"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "79d2f0d260e5a6125983281b14d5c41998f164e4dabf705d920a597f83cd3024"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
