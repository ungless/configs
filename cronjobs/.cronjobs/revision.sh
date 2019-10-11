#!/usr/bin/env sh

firefox --private-window www.marinaratimer.com &
firefoxm --private-window google.com &
killall polybar
