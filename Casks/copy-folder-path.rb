cask "copy-folder-path" do
  version "0.1.0"
  sha256 "bcc7cffdf31abc11bda076136d767f113df75a0011cf4fc57cdb98e1afd1a938"

  url "https://github.com/andreasnlarsen/copy-folder-path-swift/releases/download/v#{version}/CopyFolderPath-#{version}.zip"
  name "Copy Folder Path"
  desc "Copy the paths of selected Finder items with a keyboard shortcut"
  homepage "https://github.com/andreasnlarsen/copy-folder-path-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "CopyFolderPath.app", target: "Copy Folder Path.app"

  uninstall quit: "com.andreaslar.copyfolderpath"

  zap trash: "~/Library/Preferences/com.andreaslar.copyfolderpath.plist"
end
