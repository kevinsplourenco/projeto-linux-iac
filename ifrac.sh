#!/bin/bash

echo "CRIANDO DIRETORIOS..........."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIANDO GRUPOS..........."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USERS........."

#ADMINISTRADORES

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

#VENDEDORES

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

#SECRETARIOS

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "ATRIBUINDO GRUPOS......."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "FINALIZADO........"
