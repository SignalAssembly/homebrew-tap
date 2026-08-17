cask "actual-files" do
  version "0.77.151"

  on_arm do
    sha256 "8ea125fede40f5b12562d702e3520a21e391aa087c02728d9af0b3f08e19800e"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4b8c6c24e065f90886b9676390e106a017f7c304e47180839d56eb5c9ec42ded"
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
