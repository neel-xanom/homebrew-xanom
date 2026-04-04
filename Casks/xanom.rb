cask "xanom" do
  version "1.0.1"

  on_arm do
    sha256 "abf3d4a585a7f0c3ed95709957e661f4342198ed07b86c49371cd1a948e94351"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2ce00de2b68d9de9c6b321809272ba1c065d8b8e3cdf111a6ecf3bba53f85fca"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_x64.dmg"
  end

  name "Xanom"
  desc "Desktop app for managing AI coding agents (Claude Code, Codex)"
  homepage "https://github.com/neel-xanom/xanom-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Xanom.app"

  zap trash: [
    "~/.xanom",
    "~/Library/Application Support/com.xanom.app",
    "~/Library/Caches/com.xanom.app",
    "~/Library/Logs/com.xanom.app",
    "~/Library/Preferences/com.xanom.app.plist",
    "~/Library/Saved Application State/com.xanom.app.savedState",
    "~/Library/WebKit/com.xanom.app",
  ]
end
