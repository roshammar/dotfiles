#!/usr/bin/env bash

osascript -e 'tell application "System Preferences" to quit'

# Dock

## Set dock icon size to 36 pixels, default is 48
defaults write com.apple.dock "tilesize" -int "36"

## Automatically hide and show the Dock
defaults write com.apple.dock "autohide" -bool "true"

## Remove the Dock autohide animation
defaults write com.apple.dock "autohide-time-modifier" -float "0"

## Remove the autohide delay
defaults write com.apple.dock "autohide-delay" -float "0"

## Do not display recent apps in the Dock
defaults write com.apple.dock "show-recents" -bool "false"

## Change minimize/maximize window effect
defaults write com.apple.dock "mineffect" -string "scale"

## Only show opened apps in Dock
defaults write com.apple.dock "static-only" -bool "true"

## Minimize windows into their application’s icon
defaults write com.apple.dock "minimize-to-application" -bool "true"

## Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

## Don't show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool false


# Mission Control

## Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false


# Desktop

## Hide icons on desktop
defaults write com.apple.WindowManager StandardHideDesktopIcons -bool true

## No widgets
defaults write com.apple.WindowManager StandardHideWidgets -bool true

## No click to show desktop
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false

## Set custom wallpaper image on *all desktops*
osascript -e 'tell application "System Events" to tell every desktop to set picture to "/System/Library/Desktop Pictures/Solid Colors/Stone.png"'

## No quick notes in hot bottom right corner
defaults write com.apple.dock "wvous-br-corner" -int 1


# Touch Bar

## Always display full control strip (ignoring App Controls)
defaults write com.apple.touchbar.agent PresentationModeGlobal fullControlStrip

## Replace Siri with screen capture and screen lock
defaults write com.apple.controlstrip FullCustomized -array com.apple.system.group.brightness com.apple.system.mission-control com.apple.system.launchpad com.apple.system.group.keyboard-brightness com.apple.system.group.media com.apple.system.group.volume com.apple.system.screencapture com.apple.system.screen-lock


# Screenshots

## Remove the default shadow from screenshots
defaults write com.apple.screencapture "disable-shadow" -bool "true"

## Save screenshots to the Downloads folder
defaults write com.apple.screencapture "location" -string "~/Downloads"


# Finder

## Show all file extensions inside the Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

## Show hidden files inside the Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

## Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

## Show status bar
defaults write com.apple.finder ShowStatusBar -bool "true"

## Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"

## Set default view to column
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"

## Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

## Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool "false"

## Automatically empty bin after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

## Do not display warning before changing an extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

## Home directory is opened in the fileviewer dialog when saving a new document
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

## Set ~ as the default location for new Finder windows
## For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

## Show the ~/Library folder
chflags nohidden ~/Library

## Show the /Volumes folder
sudo chflags nohidden /Volumes

## Expand the following File Info panes:
## “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true


# Mouse

## Set mouse speed to 2x
defaults write NSGlobalDomain com.apple.mouse.scaling -float "2.0"


# Trackpad

## Faster tracking speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -float "2.0"

## Map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true



# Keyboard

## Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Activity Monitor                                                            #

## Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

## Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

## Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

## Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


# Photos                                                                      #

## Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true


# Google Chrome                                                               #

## Use the system-native print preview dialog
defaults write com.google.Chrome DisablePrintPreview -bool true

## Expand the print dialog by default
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true


# Disk Utility

## Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true


# Mac App Store

## Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true


# Sound

## Lower alert volume
defaults write NSGlobalDomain "com.apple.sound.beep.volume" -float "0.5"

## No UI sound effects
defaults write NSGlobalDomain "com.apple.sound.uiaudio.enabled" -bool false


# Misc

## Enable full keyboard access for all controls
## (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

## Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

## Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

## Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"


# Energy saving                                                               #

## Enable lid wakeup
sudo pmset -a lidwake 1

## Restart automatically on power loss
sudo pmset -a autorestart 1

## Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on > /dev/null 2>&1

## Sleep the display after 60 minutes
sudo pmset -a displaysleep 60

## Disable machine sleep while charging
sudo pmset -c sleep 0

## Set machine sleep to 60 minutes on battery
sudo pmset -b sleep 60

## Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

## Never go into computer sleep mode
sudo systemsetup -setcomputersleep off > /dev/null 2>&1

# Hibernation mode
# 0: Disable hibernation (speeds up entering sleep mode)
# 3: Copy RAM to disk so the system state can still be restored in case of a
#    power failure.
sudo pmset -a hibernatemode 0



# Kill affected applications                                                  #

for app in "cfprefsd" "Dock" "Finder" "Photos" "SystemUIServer"; do
	killall "${app}" &> /dev/null
done
