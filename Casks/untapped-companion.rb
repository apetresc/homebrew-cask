cask "untapped-companion" do
  version :latest
  sha256 :no_check

  url "https://companion.untapped.gg/mac-releases/Untapped.gg+Companion+Stable+Installer.dmg"
  name "Untapped.gg Companion"
  desc "Deck tracker and overlay for MTG Arena"
  homepage "https://mtga.untapped.gg/companion"

  app "Untapped.gg Companion.app"
end
