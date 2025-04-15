#!/bin/bash

eco "criando de diretorio"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

eco "finalizado criação de diretorio"

eco "criação de grupos"

grupoadd GRP_ADM
grupoadd GRP_VEN
grupoadd GRP_SEC

eco " finalizado criação de grupos"

eco "criação de usuarios"

useradd carlos -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G  GRP_ADM
useradd maria -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G  GRP_ADM
useradd joão_ -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G  GRP_ADM
useradd debora -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G  GRP_VEN
useradd sebastiana -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p$(openssl passwd -crypt Senha123) -G GRP_SEC

eco "finalizado criação de usuarios"

eco "especificação de permissão de diretorio"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

