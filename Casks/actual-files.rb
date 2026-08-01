cask "actual-files" do
  version "0.77.66"

  on_arm do
    sha256 "32543c0236c8327b166f1791aad2de3bc2adc8f8ba2ead6a0c83c548da44588e"
    url "https://downloads.signalassembly.com/actual-files-v#{version}-Actual.Files_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6c78dfa06720992b5a24ace6b20c3622344032744b52cc053f99dbddbd772d71"
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
