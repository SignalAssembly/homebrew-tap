cask "actual-files" do
  version "0.77.44"

  on_arm do
    sha256 "92db1d5525d0749625a0fac0ec4892fbd73b9d57c86afbeebf54979e23bf6051"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "81257f2bbdcc956d318f73efccd50fae2d24a0bddf44d3b486131271dd8823ec"
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
