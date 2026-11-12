cask "20-20-20" do
  version "1.0.1"
  sha256 "a80bd3346c2e72910d672b83074d9d22d4d571ddc1ee1efb10a024b65be2f677"

  url "https://github.com/andreasnlarsen/20-20-20/releases/download/v#{version}/20-20-20-#{version}.zip"
  name "20-20-20"
  desc "Enforces the 20-20-20 eye break by darkening the screen every 20 minutes"
  homepage "https://github.com/andreasnlarsen/20-20-20"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "20-20-20.app"

  uninstall launchctl: "com.andreaslar.twenty-twenty-twenty",
            quit:      "com.andreaslar.twenty-twenty-twenty"

  zap trash: "~/Library/Application Support/20-20-20"

  caveats <<~EOS
    Open 20-20-20 once to start it. From then on it starts at login by itself:
      open "#{appdir}/20-20-20.app"
    Do the same after an upgrade.
  EOS
end
