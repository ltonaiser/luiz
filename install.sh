#!/bin/bash
apt-get install openssh-server -y #comando para instalação do openssh 
sed -i "s/Port 22/Port 10000/g" /etc/ssh/sshd_config #troca da porta padrão do ssh de 22 para 1000
/etc/init.d/ssh restart #reinicialização do serviço
