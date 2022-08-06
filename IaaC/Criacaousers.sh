#!/bin/bash

echo "Criando Usuarios Padrão para uso do SO..."

useradd gestor1 -c "Gestor 1" -m -p $(openssl passwd -crypt Senha@10) -s /bin/bash
passwd -e gestor1

useradd gestor2 -c "Gestor 2" -m -p $(openssl passwd -crypt Senha@10) -s /bin/bash
passwd -e gestor2

useradd gestor3 -c "Gestor 3" -m -p $(openssl passwd -crypt Senha@10) -s /bin/bash
passwd -e gestor3

useradd gestor4 -c "Gestor 4" -m -p $(openssl passwd -crypt Senha@10) -s /bin/bash
passwd -e gestor4

useradd gestor5 -c "Gestor 5" -m -p $(openssl passwd -crypt Senha@10) -s /bin/bash
passwd -e gestor5

echo "Criação de Usuarios realizada com Sucesso."

echo "Lembrando que os Usuarios terão que substituir a Senha depois do primeio Login."
