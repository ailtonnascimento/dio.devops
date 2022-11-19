#!/bin/bash
echo "Criando pastas "
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos (GRP_ADM, GRP_VEN, GRP_SEC)"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Associando Grupo as pastas "
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
chown root  /publico/
echo "Criando usuários"
# Usuários grupo GRP_ADM
useradd carlos  -m -c "CARLOS" -s /bin/bash -G GRP_ADM
useradd maria  -m -c "MARIA" -s /bin/bash -G GRP_ADM
useradd joao -m -c "JOÃO" -s /bin/bash -G GRP_ADM
# Usuários grupo GRP_VEN
useradd debora -m -c "DÉBORA" -s /bin/bash -G GRP_VEN
useradd sebastiana -m -c "SEBASTIANA" -s /bin/bash  -G GRP_VEN
useradd roberto -m -c "ROBERTO" -s /bin/bash  -G GRP_VEN
# Usuários grupo GRP_SEC
useradd josefina -m -c "JOSEFINA" -s /bin/bash -G GRP_SEC
useradd amanda -m -c "AMANDA" -s /bin/bash -G GRP_SEC
useradd rogerio -m -c "ROGERIO" -s /bin/bash -G GRP_SEC

# Criando permissão total para todos usuários no diretório /publico

chmod 777 /publico/
 
# Criando permissão total para os usuários nos respectivos diretórios, e neganto para outros usuários 
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
