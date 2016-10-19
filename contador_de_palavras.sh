#!/bin/bash

#Este script foi feito por Fabricio Silva e Luis Tonaiser
#Este script server para contar as palavras de um texto e ordenar de A a Z

echo "digite o nome do arquivo" 

#Este comando imprime na tela a mensagem entre ""

read arq 

#Este comando captura a palavra digitada e transfere para a variavel "arq" 

cat $arq | egrep -o '\w+' | grep .... | sort -f | uniq -c -i | sort -n -r | head 

#O comando [egrep -o '\w+'] serve para trazer so as palavras, 	                                                                                #E o comando [grep ....] serve para limitar o tamando da palavra 
#E o comando [sort -f] serve para ignorar as maisculas e minusculas nas palavras
#E o comando [uniq -c -i] serve para criar a contagem e ignorar as maisculas e minusculas nas palavras
#E o comando [sort -n -r] serve para ordenar do maior para o menor 
#E o comando [head] serve para mostrar os 10 primeiros

