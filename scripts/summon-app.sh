#!/bin/bash
# Usage: summon-app.sh "<App Name>" "<bundle.id>"
#
# Opens/focuses APP, then drags its window to whichever workspace
# you were already on, instead of jumping you to wherever the app
# currently lives.

AEROSPACE=/opt/homebrew/bin/aerospace
APP_NAME="$1"
BUNDLE_ID="$2"

TARGET_WORKSPACE=$("$AEROSPACE" list-workspaces --focused)

open -a "$APP_NAME"

for _ in $(seq 1 30); do
    FOCUSED_BUNDLE=$("$AEROSPACE" list-windows --focused --format '%{app-bundle-id}' 2>/dev/null)
    if [ "$FOCUSED_BUNDLE" = "$BUNDLE_ID" ]; then
        "$AEROSPACE" move-node-to-workspace --focus-follows-window "$TARGET_WORKSPACE"
        exit 0
    fi
    sleep 0.1
done
