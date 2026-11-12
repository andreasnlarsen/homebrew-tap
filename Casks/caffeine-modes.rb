cask "caffeine-modes" do
  version "1.2.1"
  sha256 "cdd730c0180e667d57fa01eebd979432f9756f9d14f7adda0d95f7ca3ad3a342"

  url "https://github.com/andreasnlarsen/caffeine-modes/releases/download/v#{version}/Caffeine-Modes-#{version}.dmg"
  name "Caffeine Modes"
  desc "Work, Night and Travel modes for Amphetamine"
  homepage "https://github.com/andreasnlarsen/caffeine-modes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Caffeine Modes.app"

  uninstall quit: "com.andreaslar.caffeinemodes"

  zap trash: "~/Library/Preferences/com.andreaslar.caffeinemodes.plist"

  caveats <<~EOS
    Caffeine Modes controls Amphetamine 5.3.2 or later, which is installed
    from the Mac App Store:
      https://apps.apple.com/app/amphetamine/id937984704
    Open Amphetamine once, then open Caffeine Modes and follow Settings > Setup.

    Turn the mode Off before you remove Caffeine Modes. Removing the app does
    not end an Amphetamine session.
  EOS
end
