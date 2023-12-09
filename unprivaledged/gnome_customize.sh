#! /bin/bash

# --------------------------------------------------------------------------------
# gnome stuff

# disable gnome auto updates
gsettings set org.gnome.software download-updates false
gsettings set org.gnome.software download-updates-notify false

# tweak gnome
# swap caps and escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"

# tweak window settings
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar "'toggle-maximize'"
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar "'minimize'"
gsettings set org.gnome.desktop.wm.preferences button-layout "':appmenu,minimize,maximize,close'"
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

# edit top bar
gsettings set org.gnome.desktop.interface clock-format "'24h'"
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true

# desktop preferences
gsettings set org.gnome.desktop.interface enable-hot-corners false

# do not autostart programs on media insertion
gsettings set org.gnome.desktop.media-handling autorun-never true






