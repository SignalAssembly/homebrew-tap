cask "actual-files" do
  version "0.77.52"

  on_arm do
    sha256 "643e41518735ba6ab5a71f40d0de77bf68eee6331af4db334ecdd17ec12cac78"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6e698bde592250cc7f83ecace776c8ab7cfd9131d02e3c9523694e0228002cbf"
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
