#!/bin/bash

layout=$(setxkbmap -query | awk '/layout/{print $2}')
variant=$(setxkbmap -query | awk '/variant/{print $2}')

if [ "$layout" = "us" ] && [ "$variant" = "colemak_dh" ]; then
    echo "Colemak-DH"
fi
