#!/bin/sh

actions=("lock\nrestart\nshutdown\nsleep\nhibernate")

action=$(echo -e $actions | dmenu -fn "Mononoki:size=11")

case "$action" in
    lock)
        xscreensaver-command -lock
        ;;

    restart)
        systemctl reboot
        ;;

    shutdown)
        systemctl poweroff
        ;;

    sleep)
        systemctl suspend
        ;;

    hibernate)
        systemctl hibernate
        ;;
esac
