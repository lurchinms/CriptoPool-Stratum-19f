#!/usr/bin/env bash

#####################################################
# Created by KriptoKyng for CryptoPoolScript  use...
####################################################

source /etc/functions.sh

echo -e " Building stratum 19f and copying files...$COL_RESET"
cd
sudo wget https://github.com/cryptopool-builders/yiimp/archive/19fba319e435edde4df16bd2abae1501fd9e4504.zip
echo -e " $GREEN Download Completed Unzipping it now$COL_RESET"
hide_output unzip 19fba319e435edde4df16bd2abae1501fd9e4504.zip
echo -e " $GREEN Unzip Completed$COL_RESET"
echo -e " $GREEN Starting Stratum build$COL_RESET"
cd yiimp-19fba319e435edde4df16bd2abae1501fd9e4504/stratum/iniparser
hide_output make
cd ..
hide_output make
sudo mv stratum /home/crypto-data/yiimp/site/stratum
cd 
sudo rm 19fba319e435edde4df16bd2abae1501fd9e4504.zip
echo -e " $GREEN Removed ZIP file$COL_RESET"
sudo rm -r yiimp-19fba319e435edde4df16bd2abae1501fd9e4504
echo -e " $GREEN Removed Builder Folder$COL_RESET"
echo -e " $GREEN Stratum 19f built and Restart is Required....$COL_RESET"
