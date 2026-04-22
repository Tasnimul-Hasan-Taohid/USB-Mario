#!/bin/bash
# USB Mario — macOS Launcher
# Double-click this file to play in fullscreen

GAME="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/index.html"

# Try Chrome first
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [ -f "$CHROME" ]; then
    "$CHROME" --new-window --start-fullscreen "file://$GAME" 2>/dev/null &
    exit 0
fi

# Try Chromium
CHROMIUM="/Applications/Chromium.app/Contents/MacOS/Chromium"
if [ -f "$CHROMIUM" ]; then
    "$CHROMIUM" --new-window --start-fullscreen "file://$GAME" 2>/dev/null &
    exit 0
fi

# Fallback — default browser
open "file://$GAME"
