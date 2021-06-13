#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

#launch
polybar -c ~/.config/polybar/config bottom &
polybar -c ~/.config/polybar/config top &

echo "Bars launched...."
