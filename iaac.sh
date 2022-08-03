#!/bin/bash

echo "Criando Diretorios..."

mkdir /Administracao
mkdir /Publico
mkdir /Secretaria
mkdir /Vendas

echo "Criando os Grupos..."

groupadd G_Administracao
groupadd G_Secretaria
groupadd G_Vendas

echo "Criando Usuarios..."

echo "Usuario do Grupo Administrativo."

useradd carlossouza -c "Carlos Souza" -G G_Administracao -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd joaosouza -c "João Souza" -G G_Administracao -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd mariasouza -c "Maria Souza" -G G_Administracao -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash

echo "Usuarios do Grupo Secretaria."

useradd amandasouza -c "Amanda Souza" -G G_Secretaria -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd josefinasouza -c "Josefina Souza" -G G_Secretaria -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd rogeriosouza -c "Rogerio Souza" -G G_Secretaria -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash

echo "Usuarios do Grupo Vendas."

useradd deborasouza -c "Debora Souza" -G G_Vendas -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd sebastianasouza -c "Sebastiana Souza" -G G_Vendas -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash
useradd robertosouza -c "Roberto Souza" -G G_Vendas -m -p $(openssl passwd -crypt Senha@12345) -s /bin/bash

echo "Concedendo Permissões aos Diretorios..."

chown root:G_Administracao /Administracao
chown root:G_Secretaria /Secretaria
chown root:G_Vendas /Vendas

chmod 770 /Administracao
chmod 777 /Publico
chmod 770 /Secretaria
chmod 770 /Vendas

echo "Finalizado."
