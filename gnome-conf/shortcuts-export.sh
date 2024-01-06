#!/usr/bin/env bash

dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > dump/shortcuts/dump_1
dconf dump /org/gnome/desktop/wm/keybindings/ > dump/shortcuts/dump_2
dconf dump /org/gnome/shell/keybindings/ > dump/shortcuts/dump_3
dconf dump /org/gnome/mutter/keybindings/ > dump/shortcuts/dump_4
dconf dump /org/gnome/mutter/wayland/keybindings/ > dump/shortcuts/dump_5