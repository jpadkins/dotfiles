#!/usr/bin/sh

# Terminal already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch main bar
polybar main & > /dev/null 2>&1

echo "Bar launched..."
