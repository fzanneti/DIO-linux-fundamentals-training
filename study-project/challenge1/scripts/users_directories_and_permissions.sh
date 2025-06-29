#!/bin/bash

echo "Iniciando o provisionamento de usuários, grupos e diretórios..."

# Criando os diretórios
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criando os grupos
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando os usuários e adicionando aos respectivos grupos
echo "Criando usuários e adicionando aos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora      -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto     -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda   -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Definindo dono e grupo dos diretórios
echo "Definindo permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root    /publico

# Definindo permissões
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Provisionamento finalizado com sucesso!"