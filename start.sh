#!/bin/bash

echo "Hello user"
echo "Start programm"

if [ "$#" -lt 1 ]; then
    echo "Недостаточно аргументов. Пожалуйста, передайте в качестве аргумента имя пользователя. Это необходимо для того чтобы прописать его в sudo"
    exit 1
fi

apt-get update
echo "update base OK"

apt-get install mc ufw sudo openssh-server ssh -y
echo "install mc, sudo, openssh"


ufw enable
ufw allow ssh
echo "activate ufw and allow ssh port"

usermod -aG sudo $1
touch /etc/sudoers.d/$1
cat /etc/sudoers.d/$1 <<EOF
	$1ALL=(ALL) NOPASSWD:ALL
EOF
