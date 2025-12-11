#!/bin/sh

echo -e "\nPython, Pip version.\n"
read -p "Press enter to continue..."
echo -e "\n"

python --version
pip --version

echo -e "\nUpgrading Python Pip\n"
read -p "Press enter to continue..."
echo -e "\n"

# Upgrade pip
sudo apt-get update -y
sudo apt-get install python3-pip -y
pip install --upgrade pip
pip3 install pyinotify watchdog


echo -e "\nInstalling Odoo required Python packages\n"
read -p "Press enter to continue..."
echo -e "\n"

# Install the required Python packages
pip3 install --user -r ./requirements.txt
pip list

# Done installing needed package(s)
echo "Done installating needed Python package(s) for Odoo....."