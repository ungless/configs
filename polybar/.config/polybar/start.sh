#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

MONITOR=DisplayPort-0 polybar -r main &
MONITOR=DVI-0 polybar -r main &
