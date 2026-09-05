cask "flowpeek" do
  version "0.5.1"
  sha256 "7abbfe6aee0d58b244ab38eec9b75d4db3d2972cfdf5276142ef6dd277254c0f"

  url "https://github.com/FlowPeek/flowpeek/releases/download/v#{version}/FlowPeek-#{version}.dmg",
      verified: "github.com/FlowPeek/flowpeek/"
  name "FlowPeek"
  desc "Menu-bar Mermaid preview for selected or copied diagram source"
  homepage "https://github.com/FlowPeek/flowpeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

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
