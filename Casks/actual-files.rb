cask "actual-files" do
  version "0.77.41"

  on_arm do
    sha256 "c457b335199931e2ad75ec774027643d08cc861abb3e9cdc6009f42b60410ca1"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fdceb1a875e834bcd6bd6dda2a2fb339e09a0f41738cc5e11d23354fdf18b3b4"
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
