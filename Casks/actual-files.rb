cask "actual-files" do
  version "0.77.53"

  on_arm do
    sha256 "f75ba9cf2d573f0d5df8dc4a4117944b0eb98ad12d2fdd5ae46c1cf6a98953d4"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c7219caa046872eca948c308da999862c173ccb984feaf684d9e21a32dbe6986"
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
