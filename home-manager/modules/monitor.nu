#!/usr/bin/env nu

# Get the list of connected monitors
let monitors = (hyprctl monitors | str contains "HDMI-A-1")

if $monitors {
    # If HDMI-A-1 is connected, make it primary
    hyprctl keyword monitor "HDMI-A-1, 1920x1080@120, 0x0, 1"
} else {
    # Otherwise, use eDP-1 as fallback
#    hyprctl keyword monitor "eDP-1, 1920x1080@60, 0x0, 1"
}
