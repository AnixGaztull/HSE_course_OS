#!/bin/bash

read prefix

if [ $# -ne 1 ］；then
  echo "Ошибка: необходим 1 аргумент"
  exit 1
fi
if (($1<1));then
  echo 'Ошибка: аргумент должен быть больше 0'
  exit 2
fi
for（(i=1;i<=$1;i++))
do
  password=$(pwgen 12 1)
  username="${prefix}_${i}"
  echo "$username,$password">>users.csv
done 

echo 'Сохранено в users.csv"
