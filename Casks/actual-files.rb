cask "actual-files" do
  version "0.77.106"

  on_arm do
    sha256 "22ffda44d5ff6a4c9c7a2f86aa8ac66fa5c65dc95deee1a4e3a4d19371cec726"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4c04d5a7ea6b8ab1b3f1554cc206f93df1de6df19cc00c4671d7ca0a7b50ad86"
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
