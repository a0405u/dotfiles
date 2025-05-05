#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

# run ""

run "nekoray"
run picom --config /home/a0405u/.config/picom/picom.conf
run /home/a0405u/.screenlayout/main.sh
run sxhkd
