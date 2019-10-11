#!/usr/bin/env sh

killall -q polybar

# Wait until the processes have been shut down
MONITOR=HDMI-0 polybar -r main &
MONITOR=DVI-0 polybar -r main &
