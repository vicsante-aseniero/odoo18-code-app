#!/bin/sh

echo -e "\nPython, Postgres-Client version.\n"
read -p "Press enter to continue..."
echo -e "\n"

python --version
psql --version

echo -e "\nInstalling required packages for Python3\n"
read -p "Press enter to continue..."
echo -e "\n"

# Required packages for Python3
sudo apt-get update -y
sudo apt-get install -y python3-dev build-essential libjpeg-dev libpq-dev libjpeg62-turbo-dev libxml2-dev libssl-dev libffi-dev libmariadb-dev-compat libmariadb-dev libxslt1-dev zlib1g-dev libsasl2-dev libldap2-dev liblcms2-dev

echo -e "\nUpdating apt-get\n"
read -p "Press enter to continue..."
echo -e "\n"

# Updating apt-get
sudo apt-get update -y

echo -e "\nInstalling Web Dependencies\n"
read -p "Press enter to continue..."
echo -e "\n"

# Install web dependencies
sudo apt-get install -y npm
sudo ln -s /usr/bin/nodejs/usr/bin/node 
sudo npm install -g less less-plugin-clean-css 
sudo apt-get install -y node-less

echo -e "\nInstalling wkhtmltopdf\n"
read -p "Press enter to continue..."
echo -e "\n"

# Install the wkhtmltopdf
sudo apt-get install wkhtmltopdf

echo -e "\nUpdating apt-get\n"
read -p "Press enter to continue..."
echo -e "\n"

# Update apt-get
sudo apt-get update -y

# Done installing needed package(s)
echo "Done version verifications and installation of needed package(s)....."

echo -e "\nInstalling Starship\n"
read -p "Press enter to continue..."
echo -e "\n"

curl -sS https://starship.rs/install.sh | sh -s -- -y && echo 'eval "$(starship init bash)"' >> ~/.bashrc && echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo -e "\n"
echo "Done installing Starship"