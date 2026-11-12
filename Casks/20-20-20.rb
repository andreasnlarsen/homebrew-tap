cask "20-20-20" do
  version "1.0.0"
  sha256 "816754a5ce0ab8d61540730c9aa977688e116293f12e5464bf314fcbaed32535"

  url "https://github.com/andreasnlarsen/20-20-20/releases/download/v#{version}/20-20-20-#{version}.zip"
  name "20-20-20"
  desc "Enforces the 20-20-20 eye break by darkening the screen every 20 minutes"
  homepage "https://github.com/andreasnlarsen/20-20-20"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "20-20-20.app"

  # Opening the app once makes it hand itself to launchd, which keeps it running.
  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/20-20-20.app"]
  end

  uninstall launchctl: "com.andreaslar.twenty-twenty-twenty",
            quit:      "com.andreaslar.twenty-twenty-twenty"

  zap trash: "~/Library/Application Support/20-20-20"
end
