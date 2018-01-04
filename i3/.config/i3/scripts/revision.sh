#!/bin/sh

killall polybar
killall telegram-desktop
killall rhythmbox
killall dunst
amixer set Master 0
firefox --new-window time.is &
firefox --new-window &
