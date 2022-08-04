#!/bin/bash

echo "Atualizando o servidor..."
apt update
apt upgrade -y
apt install -y apache2 unzip

echo "Baixando e copiando os arquivos da aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -o /tmp/site.zip
unzip /tmp/site.zip -d /tmp/meusite/
cp -R /tmp/meusite/* /var/www/html/
