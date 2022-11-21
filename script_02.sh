#!/bin/bash
mkdir /tmp 
echo "Atualizando o servidor "
apt update 
apt upgrade -y
echo "Instalando Servidor Web" 
apt install  apache2 -y
echo "Instalando Unzip"
apt install unzip -y
echo "Instalando WGET"
apt install wget -y
echo "Baixando o arquivo do site"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descomapactando e copiando  o arquivo para a  pasta padrão do Apache"
 
unzip  main.zip -d /tmp/


cp -r /tmp/linux-site-dio-main/*  /var/www/html/
echo "Fim do script"


 
