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

