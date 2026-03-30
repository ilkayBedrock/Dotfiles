#!/bin/bash

vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')
mute=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o MUTED)

if [ "$mute" = "MUTED" ]; then
    echo "MUTE"
else
    echo "VOL ${vol}%"
fi
