cask "visual-studio-code" do
  version "1.55.0"

  if Hardware::CPU.intel?
    sha256 "f0f3e8749b5fc42951b1875cefc4bfab82f8379c0e759b940ffccfc10de1ff09"
    url "https://update.code.visualstudio.com/#{version}/darwin/stable"
  else
    sha256 "0f25a9abf91a5a0c7a4cff092b949bfc650f98035dcdb3ed276c91baf534f93b"
    url "https://update.code.visualstudio.com/#{version}/darwin-arm64/stable"
  end

  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin-universal/stable/VERSION"
    strategy :page_match
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)*)"/)
  end

  auto_updates true

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap trash: [
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
    "~/.vscode",
  ]
end
