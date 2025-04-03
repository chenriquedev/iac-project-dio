#!/bin/bash


mkdir /home/publico
echo "Criado o diretorio publico!!!"

mkdir /home/adm
echo "Criado o diretorio adm!!!"

mkdir /home/ven
echo "Criado o diretorio ven!!!"

mkdir /home/sec
echo "Criado o diretorio sec!!!"

echo "Iniciando a criacao de grupos..."
sleep 5

groupadd GRP_ADM
echo "Grupo ADM criado!!!"

groupadd GRP_VEN
echo "Grupo VEN criado!!!"

groupadd GRP_SEC
echo "Grupo SEC criado!!!"

echo "Pastas e grupos criados, setando as permissoes das pastas..."
sleep 5

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

echo "Permissoes configuradas, agora criando usuarios..."

useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd 102030)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd 102030)
passwd maria -e 

useradd joao -c "Joao" -s /bin/bash -p $(openssl passwd 102030)
passwd joao -e 

useradd debora -c "Debora" -s /bin/bash -p $(openssl passwd 102030)
passwd debora -e 

useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd 102030)
passwd sebastiana -e 

useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd 102030)
passwd roberto -e 

useradd josefina -c "Josefina" -s /bin/bash -p $(openssl passwd 102030)
passwd josefina -e 

useradd amanda -c "Amanda" -s /bin/bash -p $(openssl passwd 102030)
passwd amanda -e 

useradd rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd 102030)
passwd rogerio -e 

sleep 5

echo "Usuarios criados, atribuindo grupos..."

usermod -G  GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Comando realizado com sucesso, finalizando..."
