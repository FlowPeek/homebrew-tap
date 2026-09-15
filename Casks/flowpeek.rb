cask "flowpeek" do
  version "0.25.12"
  sha256 "d376ee85a13d32433dc9c66b7d226073b96c5a22d0432a6cf4d011edc7161d00"

  url "https://github.com/FlowPeek/flowpeek/releases/download/v#{version}/FlowPeek-#{version}.dmg"
  name "FlowPeek"
  desc "Menu-bar Mermaid preview for selected or copied diagram source"
  homepage "https://github.com/FlowPeek/flowpeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FlowPeek.app"

  uninstall quit: "com.selenehyun.FlowPeek"

  zap trash: [
    "~/Library/Application Support/com.selenehyun.FlowPeek",
    "~/Library/Caches/com.selenehyun.FlowPeek",
    "~/Library/HTTPStorages/com.selenehyun.FlowPeek",
    "~/Library/Preferences/com.selenehyun.FlowPeek.plist",
    "~/Library/Saved Application State/com.selenehyun.FlowPeek.savedState",
  ]

  caveats do
    <<~EOS
      FlowPeek needs Accessibility permission to read the current selection in other apps.
      Grant it in System Settings > Privacy & Security > Accessibility, then reopen FlowPeek.
    EOS
  end
end
