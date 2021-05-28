#! /bin/bash

#############################################
# TrudeOS installer                         #
# Should be run inside TrudeOS's repository #
# Still in development - 28/5/2021          #
#############################################

echo '############################################################################'
echo '#                    Welcome to TrudeOS Installer!                         #'
echo '############################################################################'
echo '# The Installer will guide you trough the installation porocess            #'
echo '# Please keep in mind that this is still an unfinished development version #'
echo '# Use this script at your own risk                                         #'
echo '############################################################################'

# Prepare live environment
pacman -Sy
pacman -S git python-pip
pip uninstall archinstall
git clone https://github.com/archlinux/archinstall
cd archinstall
python setup.py install
cd ..
rm -r archinstall

# Run TrudeOS Installer
python TrudeOSInstall.py
