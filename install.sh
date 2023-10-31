#!/bin/bash
#Script By GD Hiruna bettered by lanixus

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
ip_publica="$(dig +short myip.opendns.com @resolver1.opendns.com)"
ip_local=$(hostname -I | cut -d' ' -f1)
direccion_ejecucion=$(pwd)

clear
echo "${yellow}▀█░█▀ █▀▀█ █▀▀   █▀▀ ▀▀█▀▀ █▀▀█ ▀▀█▀▀ ░▀░ █▀▀ ▀▀█▀▀ ░▀░ █▀▀ █▀▀   █░░░█ █▀▀ █▀▀▄"
echo "${yellow}░█▄█░ █░░█ ▀▀█   ▀▀█ ░░█░░ █▄▄█ ░░█░░ ▀█▀ ▀▀█ ░░█░░ ▀█▀ █░░ ▀▀█   █▄█▄█ █▀▀ █▀▀▄"
echo "${yellow}░░▀░░ █▀▀▀ ▀▀▀   ▀▀▀ ░░▀░░ ▀░░▀ ░░▀░░ ▀▀▀ ▀▀▀ ░░▀░░ ▀▀▀ ▀▀▀ ▀▀▀   ░▀░▀░ ▀▀▀ ▀▀▀░"
echo ""
echo "${yellow}Dirección IP Pública: ${ip_publica}"
echo "Dirección IP Local: ${ip_local}"
echo "Directorio de Ejecución: ${direccion_ejecucion}"
echo ""
echo "${yellow}1. Descargar e Instalar VPS Statistics Web"
echo "2. Desinstalar VPS Statistics Web"
echo "0. Salir"
echo "Por favor, seleccione una opción:"

read opcion

case $opcion in
    1)
        echo "${yellow}Downloading and Installing Requirements of VPS Statistics Web ${red}(Script By GD Hiruna)${green}"
        apt-get update
        apt-get install wget
        sudo apt-get install zip unzip
        apt-get install apache2
        sudo apt install php libapache2-mod-php
        sudo systemctl restart apache2
        echo "${yellow}Downloading and Installing VPS Statistics Web ${red}(Script By GD Hiruna)${green}"
        cd /var/www/html/
        wget https://github.com/hirunaofficial/VPS-Statistics-Web/archive/refs/heads/main.zip
        unzip main.zip
        rm -R main.zip
        mv /var/www/html/VPS-Statistics-Web-main /var/www/html/VPS-Statistics-Web
        cd /var/www/html/VPS-Statistics-Web
        chmod -R 777 *
        clear
        echo "${yellow}VPS Statistics Web Successfully Installed ${red}(Script By GD Hiruna)"
        echo "${green}http://${ip_publica}/VPS-Statistics-Web"
        ;;
    2)
        echo "${yellow}Uninstalling VPS Statistics Web ${red}(Script By GD Hiruna)${green}"
        cd /var/www/html/
        rm -R VPS-Statistics-Web
        echo "${yellow}VPS Statistics Web Successfully Uninstalled ${red}(Script By GD Hiruna)"
        ;;
    0)
        echo "Saliendo del script."
        ;;
    *)
        echo "Opción no válida. Saliendo del script."
        ;;
esac
