#!/usr/bin/env bash
# firejail.sh - launch apps in Firejail easily
# Usage: firejail.sh <app> [args...]

APP="$1"
shift  # Remove first argument, keep remaining args

# Allow user override via optional profile (if exists)
PROFILE="$HOME/.config/firejail/$APP.profile"
if [ -f "$PROFILE" ]; then
	FJ_OPTS="--profile=$PROFILE"
else
	FJ_OPTS=""
fi

# Launch the app
exec firejail --quiet $FJ_OPTS "$APP" "$@"
