#!/bin/bash

# Define screenshot directory
SCREENSHOTS_DIR="${XDG_PICTURES_DIR:-$HOME/Pictures}/Screenshots"
mkdir -p "$SCREENSHOTS_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="Screenshot-${TIMESTAMP}.png"
FILEPATH="${SCREENSHOTS_DIR}/${FILENAME}"

# Notification function
notify_screenshot() {
    if command -v notify-send &> /dev/null; then
        notify-send "Screenshot Taken" "$1"
    fi
}

# Slurp border options from user's original command
SLURP_OPTIONS="-b 1B1F28CC -c E06B74ff -s C778DD0D -w 2"

case "$1" in
    "area-copy-save")
        # Select area, copy to clipboard, save to file
        grim -g "$(slurp $SLURP_OPTIONS)" "$FILEPATH" && wl-copy < "$FILEPATH"
        notify_screenshot "Area screenshot copied to clipboard and saved to $FILEPATH"
        ;;
    "area-copy")
        # Select area, copy to clipboard only
        grim -g "$(slurp $SLURP_OPTIONS)" - | wl-copy
        notify_screenshot "Area screenshot copied to clipboard"
        ;;
    "area-save")
        # Select area, save to file only
        grim -g "$(slurp $SLURP_OPTIONS)" "$FILEPATH"
        notify_screenshot "Area screenshot saved to $FILEPATH"
        ;;
    "full-copy-save")
        # Full screen, copy to clipboard, save to file
        grim "$FILEPATH" && wl-copy < "$FILEPATH"
        notify_screenshot "Full screen screenshot copied to clipboard and saved to $FILEPATH"
        ;;
    "full-copy")
        # Full screen, copy to clipboard only
        grim - | wl-copy
        notify_screenshot "Full screen screenshot copied to clipboard"
        ;;
    "full-save")
        # Full screen, save to file only
        grim "$FILEPATH"
        notify_screenshot "Full screen screenshot saved to $FILEPATH"
        ;;
    *)
        echo "Usage: $0 {area-copy-save|area-copy|area-save|full-copy-save|full-copy|full-save}"
        exit 1
        ;;
esac
