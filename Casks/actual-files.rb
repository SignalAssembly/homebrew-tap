cask "actual-files" do
  version "0.77.124"

  on_arm do
    sha256 "cc7fa780e919ba79616deb6154ad4dda6b72a85aaa987077d180abf3f36122cd"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ef58944d0a81795ed2fc5e84ff170cb1593e108c27e4d877c45a9ddc4ef01592"
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
