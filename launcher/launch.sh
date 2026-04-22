#!/bin/bash
# USB Mario — Linux Launcher

GAME="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/index.html"

# Try browsers in order
for browser in google-chrome chromium-browser chromium firefox; do
    if command -v "$browser" &>/dev/null; then
        "$browser" --new-window --start-fullscreen "file://$GAME" 2>/dev/null &
        exit 0
    fi
done

# Fallback
xdg-open "file://$GAME"
