# Homebrew tap

Mac utilities by Andreas Larsen, installable with [Homebrew](https://brew.sh).

| App | What it does | Install |
| --- | --- | --- |
| [20-20-20](https://github.com/andreasnlarsen/20-20-20) | Enforces the 20-20-20 eye break: every 20 minutes the screen goes dark, and you cannot skip it | `brew install --cask andreasnlarsen/tap/20-20-20` |
| [Copy Folder Path](https://github.com/andreasnlarsen/copy-folder-path-swift) | Copies the paths of selected Finder items with Shift-Command-C | `brew install --cask andreasnlarsen/tap/copy-folder-path` |
| [Caffeine Modes](https://github.com/andreasnlarsen/caffeine-modes) | Work, Night and Travel modes for Amphetamine: keeps the Mac working with the displays off or the lid closed. Needs Amphetamine from the Mac App Store | `brew install --cask andreasnlarsen/tap/caffeine-modes` |

The apps are signed with a Developer ID and notarized by Apple.

Homebrew 6 and later ask you to trust taps outside the official catalogue. If an install is refused with "untrusted tap", run this once and install again:

```sh
brew trust andreasnlarsen/tap
```
