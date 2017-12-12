#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
MONITOR=DisplayPort-0 polybar -r main &
MONITOR=DVI-0 polybar -r main &
