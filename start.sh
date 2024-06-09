#!/bin/bash

apt-get update
echo "update base OK"

apt-get install mc ufw sudo openssh-server ssh -y
echo "install mc, sudo, openssh"



# Код для создания записи в sudoers для того чтобы получить доступ
echo -n "Введите имя пользователя которому вы хотите прописать права суперпользователя: "
read name
echo "Процесс запущен"
usermod -aG sudo $name
touch /etc/sudoers.d/$name
python3 create_files.py $name
echo "Процесс завершен"

echo "Активация UFW"
ufw enable

echo "Добавление в исключение UFW - SSH"
ufw allow ssh



echo -n "Статичный адрес компьютера в сети: "
read address

echo "Процесс запущен"
python3 network.py $address
echo "Процесс завершен"

