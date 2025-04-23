#!/bin/bash

# Actualizar los repositorios y el sistema
echo "Actualizando repositorios y sistema..."
sudo apt update && sudo apt upgrade -y

# Instalar Git
echo "Instalando Git..."
sudo apt install git -y

# Instalar Visual Studio Code
echo "Instalando Visual Studio Code..."
sudo apt install software-properties-common -y
sudo apt update
sudo apt install apt-transport-https curl -y
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y

# Instalar Node.js
echo "Instalando Node.js..."
sudo apt install nodejs npm -y

# Instalar Python
echo "Instalando Python..."
sudo apt install python3 python3-pip -y

# Instalar Java (OpenJDK)
echo "Instalando OpenJDK..."
sudo apt install openjdk-17-jdk -y

# Instalar Postman (usando snap)
echo "Instalando Postman..."
sudo snap install postman

# Instalar Google Chrome (usando .deb)
echo "Instalando Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# Instalar Docker
echo "Instalando Docker..."
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Instalar Composer (PHP)
echo "Instalando Composer..."
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Instalar Oracle VirtualBox
echo "Instalando Oracle VirtualBox..."
sudo apt install virtualbox -y

# Limpieza
echo "Limpiando paquetes innecesarios..."
sudo apt autoremove -y

echo "Instalación completada!"