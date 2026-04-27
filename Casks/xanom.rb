cask "xanom" do
  version "2.0.1"

  on_arm do
    sha256 "797dfe4a471e8fe42f714253cbd9e98f1eb81ebcde0f0c53663853ae9a3c0a7a"
    url "https://github.com/neel-xanom/xanom-releases/releases/download/v#{version}/Xanom_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "702a6bf177d1426139289ee19ac899c194ea65b091db9f63418183d2432463b7"
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
