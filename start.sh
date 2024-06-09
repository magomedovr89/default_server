#!/bin/bash

echo -n "Введите имя пользователя которому вы хотите прописать права суперпользователя: "

read name
echo "Процесс запущен"

usermod -aG sudo $name
touch /etc/sudoers.d/$name

python3 create_files.py $name
echo "Процесс завершен"


#apt-get update
#echo "update base OK"
#
#apt-get install mc ufw sudo openssh-server ssh -y
#echo "install mc, sudo, openssh"
#
#
#
#ufw enable
#ufw allow ssh
#echo "activate ufw and allow ssh port"
#
#usermod -aG sudo $1
#touch /etc/sudoers.d/$1
#
#python3 create_files.py $1
#
#python3 create_files.py $1 /etc/sudoers.d/$1 /asdas sdfsdf 123123


