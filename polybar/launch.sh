#! /bin/bash

killall -q polybar

sleep 1; polybar --reload bspwm &

echo "launched polybar"

