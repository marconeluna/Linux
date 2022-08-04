#!/bin/bash

echo "Atualizando o Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Aplicações..."

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Fazendo o Download e Copiando os Arquivos da Aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
