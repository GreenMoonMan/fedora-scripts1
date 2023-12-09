#! /bin/bash

#--------------------------------------------------------------------------------
# final stage of the customization script

# make sure everything is executeable
chmod u+x ./*.sh
chmod u+x corectrl/*.sh
chmod u+x shell_extensions/*.sh
chmod u+x privaledged/*.sh
chmod u+x unprivaledged/*.sh

sudo ./privaledged_scripts.sh
./scripts.sh

