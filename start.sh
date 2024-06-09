#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Недостаточно аргументов. Пожалуйста, передайте в качестве аргумента имя пользователя. Это необходимо для того чтобы прописать его в sudo"
    exit 1
fi


while [ -n "$1" ]
  do
    case "$1" in
      -a) echo "Found the -a option";;
      -b) param="$2"
      echo "Found the -b option, with parameter value $param"
      shift ;;
      -c) echo "Found the -c option";;
      --) shift
      break ;;
      *) echo "$1 is not an option";;
    esac
    shift
    done
count=1
for param in "$@"
  do
    echo "Parameter #$count: $param"
    count=$(( $count + 1 ))
  done



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


