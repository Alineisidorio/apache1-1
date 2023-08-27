#!/bin/bash

echo "Atualizando o servidor"

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando o Apache e Unzip e copiando arquivos"

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip
cd linux-site-dio-main

sudo cp -R * /var/www/html/