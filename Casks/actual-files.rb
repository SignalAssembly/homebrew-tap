cask "actual-files" do
  version "0.76.2"

  on_arm do
    sha256 "cba96cf29781eaf5298a5b6dcbb356b36d491d3e3dadcc2a519f3683a0250499"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1aec353d2dccd1a11004ea1a197378bac1c70c565a442418c888648b71e83ab8"
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
