#!/bin/bash

echo "Atualizando e instalando aplicativos essenciais no servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivo do repositório na pasta /tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo baixado..."
unzip main.unzip

echo "Abrindo a local..."
cd linux-site-dio-main

echo "Copiando arquivos para a pasta padrão do Apache..."
cp -R * /var/www/html/

echo "Permitir a execução desse arquivo, utilizando o comando: chmod +x provisioning_an_apache_web_server.sh"