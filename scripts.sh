#! /bin/bash

# rest of the customization scripts are run here

# install flatpak applications
./unprivaledged/flatpak_applications.sh

# configuration
./unprivaledged/application_tweaks.sh
./unprivaledged/gnome_customize.sh
./unprivaledged/volume_keys.sh

# manually install shell extensions
cd shell_extensions
./install_extensions.sh

# replace bash rc with the one from ubuntu
cp -f ./bashrc $HOME/.bashrc


