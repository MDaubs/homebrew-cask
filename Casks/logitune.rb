cask "logitune" do
  version :latest
  sha256 :no_check

  url "https://software.vc.logitech.com/downloads/tune/LogiTuneInstaller.dmg"
  name "Logi Tune"
  desc "Optimize your webcam, headset, and Logi Dock for video meetings"
  homepage "https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html"

  app "LogiTune.app"

  uninstall launchctl: "com.logitech.logitune.launcher"

  zap trash: [
    "/Users/Shared/LogiTuneInstallerStarted.txt",
    "/Users/Shared/logitune",
    "~/Library/Application Support/logitune",
    "~/Library/Logs/LogiTune",
    "~/Library/Preferences/com.logitech.logitune.plist",
    "~/Library/Saved Application State/com.logitech.logitune.savedState",
    "~/Library/Saved Application State/com.logitech.logituneInstaller.savedState",
  ]
end
