#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar main &
polybar one &
polybar two &
polybar three &
polybar four &
polybar five &

echo "Bar launched..."
