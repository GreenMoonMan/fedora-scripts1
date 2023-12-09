#! /bin/bash

# all scripts that need privaledge escalation are run here

./privaledged/basic_setup.sh
./privaledged/applications.sh
cd corectrl
./corectrl.sh
cd ..

