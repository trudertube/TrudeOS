#! /bin/bash

#################################
# TrudeOS Installer by @TrudeEH #
#################################

error_check(){
    if [ $? == 0 ]
    then
        echo " done"
    else
        echo " error"
    fi
}

# ----] Prepare system [----
sudo aaaaaaaa &> /dev/null

# Update base:
echo
echo "[+] Updating the base system..."
echo -ne '[.........................]\r'
sudo apt update -y &> /dev/null
echo -ne '[#####....................]\r'
sudo apt upgrade -y &> /dev/null
echo -ne '[##########...............]\r'
sudo apt dist-upgrade -y &> /dev/null
echo -ne '[################.........]\r'
sudo apt autoremove -y &> /dev/null
echo -ne '[#####################....]\r'
sudo apt autoclean -y &> /dev/null
echo -ne '[#########################]\r'
echo -ne '\n'
echo

echo -ne "[+] Installing Dependencies..."
sudo apt install -y git python3 python3-pip &> /dev/null
error_check

echo -ne "[+] Installing TrudePlasma Theme..."
python3 -m pip install konsave &> /dev/null
error_check

echo -ne "[+] Applying TrudePlasma Theme..."
printf 'WIPE\n' | konsave -w &> /dev/null
printf '1\n' | konsave -i trudePlasma.knsv &> /dev/null
konsave -a 1 &> /dev/null
error_check
