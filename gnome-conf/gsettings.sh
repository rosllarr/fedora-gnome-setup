#!/usr/bin/env bash

# super+right mouse to resize windows
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'

# swap esc caps
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

# set touchpad
cat dump/touchpad | dconf load /org/gnome/desktop/peripherals/touchpad/

# disable dynamic workspaces and fixed to 4
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

# set input source
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'th')]"

# set switch layout (shift first follow by alt)
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"