cask "flowpeek" do
  version "0.25.3"
  sha256 "28b99dd86f8bc0a51f61bd3ba36a7a9f7c18685b2975740571d4d21641efdea1"

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
