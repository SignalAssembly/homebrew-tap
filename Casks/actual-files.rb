cask "actual-files" do
  version "0.77.22"

  on_arm do
    sha256 "896711e81405952ee96ee222364e8f4bae802c96d0fb08a91c99ba346d8fb6ec"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7476faa12a00e584146e955c3e9938f0f548445a012f136548c07319a9f76bed"
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
