cask "actual-files" do
  version "0.77.159"

  on_arm do
    sha256 "ab06e479531db89526df4fc8b9762bdfff7d3fee4134de43bccdd3dda276e347"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b04922d271f2e0354a216b9f36e9c3a017c345b3113b804bd4db54aa08abd5e7"
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
