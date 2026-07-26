cask "actual-files" do
  version "0.77.42"

  on_arm do
    sha256 "f0d4b3e6406dd7ebc684c0fd58ea2d4c265507021906a9ab82ea800300edf2d0"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c2cc96c705790aa7bfe48492fa4d80b7af65431379cd0af980533b151664a30f"
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
