cask "actual-files" do
  version "0.77.35"

  on_arm do
    sha256 "b116c50a88025d36558604a2c1860ac0bf592a301a5e0202eeb0864c5017758c"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ded80acc86052e93ad57a8375da6cabb205283ca847b28a808542d9be2c36c9b"
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
