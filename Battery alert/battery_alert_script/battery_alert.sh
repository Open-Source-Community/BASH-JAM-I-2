#!/bin/bash

# --- Path Configuration ---
# Get the directory where the script is located to find the theme file
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
THEME_PATH="$SCRIPT_DIR/battery.rasi"

# Detect battery path automatically (Works for BAT0, BAT1, etc.)
BAT_PATH=$(ls -d /sys/class/power_supply/BAT* | head -n 1)
BAT_NAME=$(basename "$BAT_PATH")

# Get current system username
USER_NAME=$(whoami)

# --- Monitoring Logic ---
while true; do
    if [ -d "$BAT_PATH" ]; then
        BATT_STATUS=$(cat "$BAT_PATH/status")
        BATT_LEVEL=$(cat "$BAT_PATH/capacity")
    else
        echo "Error: Battery path not found."
        exit 1
    fi

    # Check if the charger is disconnected
    if [ "$BATT_STATUS" = "Discharging" ]; then
        
        # Threshold for critical battery (Adjust based on health)
        if [ "$BATT_LEVEL" -le 40 ]; then
            
            # Send a non-persistent system notification
            notify-send -u normal -t 5000 "🔋 Battery Alert" "Level: $BATT_LEVEL% - Action Required"
            
            # Prepare the alert message
            MESSAGE="
✨ Stay Safe, $USER_NAME ✨

━━━━━━━━━━━━━━━━━━━━━━━━━━

Battery ($BAT_NAME): $BATT_LEVEL%

Please plug in your charger

to protect your system hardware.

            "

            # Display the Rofi alert (Blocks script execution until closed)
            rofi -e "$MESSAGE" -theme "$THEME_PATH"
            
            # Re-check after 15 seconds once closed
            sleep 15
        else
            # Frequent check when battery is okay but discharging
            sleep 30
        fi
    else
        # Battery is charging - Wait 7 minutes before next check to save resources
        sleep 420
    fi
done
