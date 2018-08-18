# remove wolfram && libreoffice
sudo apt-get -y remove wolfram* libreoffice*

# Update
sudo apt-get update

# Upgrade
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# Remove unneeded files
sudo apt-get -y autoremove

# Install PyQt5
sudo apt-get -y install qt5-default pyqt5-dev pyqt5-dev-tools

# Install git
sudo apt-get -y git git-core
