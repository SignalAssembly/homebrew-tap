cask "actual-files" do
  version "0.77.115"

  on_arm do
    sha256 "bc4435cc818129ac5c468dc13b064e68b9943bb18ed68dd00e7ec9a3856f8987"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "391181458af1ff0242556cfa85f2d99975dee580526eacb135f27fa4c04ebd4f"
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
