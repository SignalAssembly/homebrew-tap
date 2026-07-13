cask "actual-files" do
  version "0.76.12"

  on_arm do
    sha256 "d117fcbf39fa350b2f561722d662582105c417ce8f3c9e1e4e22f181dd0bb642"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8e5e8618781c1ac5f2887325f9b0906f1a9e5b1d72004c9c3c524b3c47160aa1"
    url "https://signalassembly.com/dl/actual-files-v#{version}-Actual.Files_#{version}_x64.dmg"
  end

  name "Actual Files"
  desc "Dual-pane file manager in the Directory Opus tradition"
  homepage "https://signalassembly.com/products/actual-files"

  app "Actual Files.app"

  zap trash: [
    "~/Library/Application Support/com.signalassembly.actual-files",
    "~/Library/WebKit/com.signalassembly.actual-files",
  ]
end
