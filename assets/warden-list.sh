#!/bin/bash

clear

tput setaf 4;
echo "__        __            _"
echo "\ \      / /_ _ _ __ __| | ___ _ __"
echo " \ \ /\ / / _  | __/  _  |/ _ \  _  \\"
echo "  \ V  V / (_| | | | (_| |  __/ | | |"
echo "   \_/\_/ \__,_|_|  \__,_|\___|_| |_| list of existing users"
tput sgr0

echo ""

count=$(ls -1 ~/wardencreds/*.sh.gpg 2>/dev/null | wc -l)

if [ "$count" != 0 ]
then
    ls -1 ~/wardencreds/*.sh.gpg | tr '\n' '\0' | xargs -0 -n 1 basename | sed -e 's/\-creds.sh.gpg$//'
else
    echo "There are no accounts currently being stored by Warden."
fi
echo ""
