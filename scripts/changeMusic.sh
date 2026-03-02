#!/usr/bin/env bash

selected_file="$(rmpc listall | fuzzel --dmenu)" || exit 0
rmpc clear && rmpc add "$HOME/Music/$selected_file" && rmpc play

