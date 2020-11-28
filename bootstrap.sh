#!/usr/bin/env bash

set eu

APP_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

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
defaults write com.apple.keyboard.fnState -int 1

# Functions setting for touch bar
defaults write com.apple.touchbar.agent PresentationModeFnModes -dict-add functionKeys 'fullControlStrip'
defaults write com.apple.touchbar.agent PresentationModeGlobal -string functionKeys

############################################################################
#                                 Trackpad                                 #
############################################################################

# Tap to click, instead of press
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1

# Make make clicking silent
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

############################################################################
#                                   Dock                                   #
############################################################################

# Move dock from default bottom to left
defaults write com.apple.dock orientation -string left

# Make icon smaller
defaults write com.apple.dock tilesize -int 35

# Hide after certain time
defaults write com.apple.dock autohide -int 1

############################################################################
#                             Navigation Menu                              #
############################################################################

# Show the percentage figure in battery
defaults write com.apple.menuextra.battery ShowPercent -string YES

############################################################################
#                               ScreenSaver                                #
############################################################################

# Ask for password straight away dimming the screen
defaults write com.apple.screensaver askForPasswordDelay -int 0


############################################################################
#                                 Hotkey                                   #
############################################################################

# Change switch between windows of same app to command+$
# defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 27 "{enabled=1;value={parameters=(36,50,1048576);type=standard;};}"

############################################################################
#                                Keyboard                                  #
############################################################################

# Programmer Dvorak
# defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '{InputSourceKind="Keyboard Layout";"KeyboardLayout ID"=6454;"KeyboardLayout Name"="Programmer Dvorak";}'

############################################################################
#                                Windows                                   #
############################################################################

# Dark Mode
defaults write "Apple Global Domain" AppleInterfaceStyle -string Dark
defaults write "Apple Global Domain" AppleInterfaceStyleSwitchesAutomatically -int 0
