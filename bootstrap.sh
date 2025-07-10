#!/usr/bin/env bash

set eu

############################################################################
#                                 Keyboard                                 #
############################################################################

# Time to start first repeat
defaults write -g InitialKeyRepeat -int 12

# How fast to repeat key
defaults write -g KeyRepeat -int 1

# Turn off autocorrect
defaults write "Apple Global Domain" NSAutomaticCapitalizationEnabled -int 0;
defaults write "Apple Global Domain" NSAutomaticSpellingCorrectionEnabled -int 0;
defaults write "Apple Global Domain" NSAutomaticTextCompletionEnabled -int 0;
defaults write "Apple Global Domain" WebAutomaticSpellingCorrectionEnabled -int 0;

# Default to use F1 to F12 key without holding functions
defaults write "Apple Global Domain" com.apple.keyboard.fnState -int 1

# Functions setting for touch bar
defaults write com.apple.touchbar.agent PresentationModeFnModes -dict-add functionKeys 'fullControlStrip'
defaults write com.apple.touchbar.agent PresentationModeGlobal -string functionKeys

# Disable Fn Key Press (Hold still valid)
defaults write com.apple.HIToolbox AppleFnUsageType -int 0

############################################################################
#                           Trackpad and Mouse                             #
############################################################################

# Tap to click, instead of press
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1

# Make clicking silent
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# Draw using 3 fingers
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1

# Move swipe gesture to 4 fingers
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2

# Allow pinch gesture
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2

# Change sensitivity of the trackpad
defaults write -g com.apple.trackpad.scrolling -float 2.0
defaults write -g com.apple.trackpad.scaling -float 4.0

# Toggle between all and textbox focus in dialog (Equals to ctrl-F7)
defaults write -g AppleKeyboardUIMode -int 2

# Change sensitivity of the mouse
defaults write -g com.apple.mouse.scrolling -float 2.0
defaults write -g com.apple.mouse.scaling -float 4.0

# Change Color Filter
defaults write com.apple.mediaaccessibility MADisplayFilterRedColorCorrectionIntensity -float 0.5
defaults write com.apple.mediaaccessibility __Color__-MADisplayFilterCategoryEnabled -int 0
defaults write com.apple.mediaaccessibility __Color__-MADisplayFilterType -int 2

############################################################################
#                                   Dock                                   #
############################################################################

# Move dock from default bottom to left
defaults write com.apple.dock orientation -string left

# Make icon smaller
defaults write com.apple.dock tilesize -int 35

# Hide after certain time
defaults write com.apple.dock autohide -int 1

# Disable hot corners
defaults write com.apple.dock "wvous-br-corner" -int 1
defaults write com.apple.dock "wvous-br-modifier" -int 1048576

# Reduce Animation
defaults write com.apple.Accessibility ReduceMotion -bool true
defaults write com.apple.universalaccess reduceMotion -bool true

# Reduce Transparency
defaults write com.apple.Accessibility EnhancedBackgroundContrastEnabled -bool true
defaults write com.apple.universalaccess reduceTransparency -bool true

############################################################################
#                             Navigation Menu                              #
############################################################################

# Show the percentage figure in battery
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true

# Show bluetooth
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18

############################################################################
#                               ScreenSaver                                #
############################################################################

# Ask for password straight away dimming the screen
defaults write com.apple.screensaver askForPasswordDelay -int 0

############################################################################
#                                Windows                                   #
############################################################################

# Dark Mode
defaults write "Apple Global Domain" AppleInterfaceStyle -string Dark
defaults write "Apple Global Domain" AppleInterfaceStyleSwitchesAutomatically -int 0

############################################################################
#                               Spotlight                                  #
############################################################################

sudo mdutil -a -i off
defaults delete com.apple.Spotlight "NSStatusItem Visible Item-0"

############################################################################
#                              Key Layout                                  #
############################################################################

sudo cp "./Custom Dvorak.keylayout" "/Library/Keyboard Layouts/"

############################################################################
#                                Restart                                   #
############################################################################
killall SystemUIServer
killall Dock
killall cfprefsd
