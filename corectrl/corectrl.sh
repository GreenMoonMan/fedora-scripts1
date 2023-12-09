#! /bin/bash

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

# autostart
mkdir -p $USER_HOME/.config/autostart/
cp /usr/share/applications/org.corectrl.corectrl.desktop $USER_HOME/.config/autostart/org.corectrl.corectrl.desktop
# change permissions of created files or directories
chown $SUDO_USER:$SUDO_USER $USER_HOME/.config/autostart/
chown $SUDO_USER:$SUDO_USER $USER_HOME/.config/autostart/org.corectrl.corectrl.desktop

# polkit setup, so no password is needed
cp ./90-corectrl.rules /etc/polkit-1/rules.d/

# enable amdgpu controls
grubby --update-kernel=ALL --args="amdgpu.ppfeaturemask=0xffffffff"

