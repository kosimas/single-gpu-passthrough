#!/bin/bash

DATE=$(date +"%m/%d/%Y %R:%S :")

function print_log() {
    echo "$DATE $1"
}

case $XDG_SESSION_TYPE in
"wayland")
    print_log "Session type is Wayland."
    ;;
"x11")
    print_log "Session type is Xorg (X11)."
    ;;
"plasmashell")
    print_log "Session type is plasmashell. Will be treatet like like wayland."
    ;;
"")
    print_log "Session type is empty. Will be treatet like like wayland."
    ;;
*)
    print_log "Warning: Unknown window manager or session type $XDG_SESSION_TYPE."
    ;;
esac

if [[ "$XDG_SESSION_TYPE" =~ ^(wayland|plasmashell|"")$ ]]; then
    echo "is wayland"
fi
