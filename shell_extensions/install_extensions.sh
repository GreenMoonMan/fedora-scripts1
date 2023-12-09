#! /bin/bash

wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod u+x gnome-shell-extension-installer

./gnome-shell-extension-installer 3193	# blur my shell
./gnome-shell-extension-installer 779		# clipboard indicator
./gnome-shell-extension-installer 277		# impatience
./gnome-shell-extension-installer 3733	# Tiling Assistant

# already installed from repos
# gnome-shell-extension-installer 19		# user themes
# gnome-shell-extension-installer 4099	# No overview at start-up
# gnome-shell-extension-installer 4144	# Vertical overview


