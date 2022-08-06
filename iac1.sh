#!/bin/bash

echo "Criando diretórios..."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_ADM
useradd maria -c "Maria da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_ADM
useradd joao -c "João da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_ADM 

useradd debora -c "Debora da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_SEC
useradd Amanda -c "Amanda da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogério da Silva" -m -p $(openssl passwd teste123) -s /bin/bash -G GRP_SEC

echo "Alterando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM!" 



