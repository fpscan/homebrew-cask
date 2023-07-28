cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.56"
  sha256 arm:   "ba314fee2dff1ae4b7f02e7c7863e2aaf50c0015c5cb18abd2db3e0346ccfc62",
         intel: "e3a6b2e6aec809eed27071fe1ac604cf1d4b431d5f563bb8b59224b466a67d2d"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
