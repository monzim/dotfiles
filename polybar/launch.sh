#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar main &
polybar top_left &
polybar top_right &
polybar top_center &
polybar bottom_center &

echo "Bar launched..."
