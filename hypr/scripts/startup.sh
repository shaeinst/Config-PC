#!/bin/bash


# start top-bar
# https://github.com/lbonn/rofi#wayland-support
# eww daemon && eww open hyprbar&

waybar&

# ## to fix java applications
# # wmname LG3D
sleep 2
# to fix Android Studio
export _JAVA_AWT_WM_NONREPARENTING=1

# change default tmp dir
export TMPDIR="$HOME/storeDrive/storeDriveBig/Temp"

# for Notifications
dunst &

# delete eww cache as it can cross 10+GBs
rm ~/.cache/eww_*.log
