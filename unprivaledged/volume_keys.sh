#! /bin/bash

# volume down
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-static "['<Shift>XF86AudioLowerVolume', '<Ctrl><Shift>XF86AudioLowerVolume']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down-precise-static "['XF86AudioLowerVolume', '<Ctrl>XF86AudioLowerVolume']"

# volume up
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-static "['<Shift>XF86AudioRaiseVolume', '<Ctrl><Shift>XF86AudioRaiseVolume']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up-precise-static "['XF86AudioRaiseVolume', '<Ctrl>XF86AudioRaiseVolume']"

