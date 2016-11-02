#!/bin/bash
#
# Script com funções do sistema operacionais Linux utilizando o comando CASE em Shell script
#
# Escrito por Luis Felipe Tonaiser para a disciplina de Shell Script



principal() {					# Função do menu principal do programa
    clear
	# Exibe na tela as opcoes do programa
    echo "[1] Mostrar a localização atual do usuário no sistema de arquivos"
    echo "[2] Mostrar o tipo de um arquivo"
    echo "[3] Criar um diretório"
    echo "[4] Apagar um diretório não vazio"                                             
    echo "[5] ler 2 números e indicar qual é o maior deles e qual é o menor"             
    echo "[6] Exibir as últimas linhas de um arquivo"                                    
    echo "[7] Exibir as primeiras linhas de um arquivo"                                  
    echo "[8] Mostrar a localização de um comando específico utilizar which ou whereis"  
    echo "[9] Mostra um diretório informado pelo usuário em formato de árvore"           
    echo "[10] Copiar um arquivo para um outro diretório"                                
    echo "[11] Mover um arquivo para outro diretório"                                    
    echo "[12] Sair"                                                                     
    echo
    echo -n "Qual a opcao desejada ? "
    read opcao          		# Le a opcao digitada pelo usuario

    case $opcao in				# De acordo com a opcao digitada executa uma funcao
        1)
            clear
            fun_1 ;;

        2)
            clear
            fun_2 ;;

        3)  clear
            fun_3 ;;

        4)
            clear
            fun_4 ;;

        5)
            clear
            fun_5 ;;

        6)
            clear
            fun_6 ;;

        7)
            clear
            fun_7 ;;

        8)
            clear
            fun_8 ;;

        9)
            clear
            fun_9 ;;

       10)
            clear
            fun_10 ;;

       11)
            clear
            fun_11 ;;

       12)
            clear
            exit ;;

        *)              		# Caso o usuario digite uma opcao invalida
            clear
            echo "Opcao desconhecida."
            read pause
            principal   		# Volta para o menu inicial do programa
            ;;
    esac
}

fun_1() {
    clear
    pwd               			# Exibe o diretorio atual
    read pause
    principal         			# Volta para o menu inicial do programa
}

fun_2() {
    clear
    echo "informe o nome do arquivo"
    read nome_arquivo_tipo
    file $nome_arquivo_tipo		# Exibe o tipo do arquivo digitado
    read pause 
    principal           		# Volta para o menu inicial do programa
}

fun_3() {
    clear
    echo "informe o nome da pasta que você quer criar"
    read nome_diretorio_criar
    mkdir $nome_diretorio_criar		# Cria o diretorio digitado
    read pause
    principal           			# Volta para o menu inicial do programa
}

fun_4() {
    clear
    echo "informe o nome da pasta que você quer apagar"
    read nome_diretorio_apagar
    rm -rf $nome_diretorio_apagar	# Apaga o diretorio digitado
    read pause
    principal           			# Volta para o menu inicial do programa
}

fun_5() {
    clear
    echo "digite o primeiro numero"
            read primeiro_numero;
            echo "digite o segundo numero"
            read segundo_numero;
          if [ $primeiro_numero -eq $segundo_numero ]			# Verifica se os numeros digitados sao iguais
          then
          echo "Esta operaração não pode ser feita com numeros iguais, favor digitar numeros difentes"
          else
            if [ $primeiro_numero -gt $segundo_numero ]; 		# Verifica se o primeiro numero digitado é maior que o segundo numero digitado
            then
            echo "O primeiro numero que é $primeiro_numero é maior que o segundo que é $segundo_numero"
            else
            echo "O segundo numero que é $segundo_numero é maior que o primeiro que é $primeiro_numero"
            fi
          fi
    read pause
    principal													# Volta para o menu inicial do programa
}

fun_6() {
    clear
    echo "informe o nome do arquivo"
    read nome_arquivo_ultimas_linhas
    echo "informe quantas linhas quer ver do final do arquivo"
    read numero_linhas_finais
    clear
    tail -$numero_linhas_finais $nome_arquivo_ultimas_linhas		# Exibe as ultimas linhas do arquivo digitado
    read pause
    principal														# Volta para o menu inicial do programa
}

fun_7() {
    clear
    echo "informe o nome do arquivo"
    read nome_arquivo_primeiras_linhas
    echo "informe quantas linhas quer ver do inicio do arquivo"
    read numero_linhas_iniciais
    clear
    head -$numero_linhas_iniciais $nome_arquivo_primeiras_linhas	# Exibe as primeiras linhas do arquivo digitado
    read pause
    principal														# Volta para o menu inicial do programa
}

fun_8() {
    clear
    echo "informe qual comando"
    read comando
    whereis $comando       		# Exibe o caminho no sistema operacional do comando
    read pause
    principal					# Volta para o menu inicial do programa
}

fun_9() {
    clear
    echo "informe o diretorio"
    read nome_diretorio_arvore
    tree -d $nome_diretorio_arvore		# Exibe o diretorio digitado em uma estrutura de arvore
    read pause
    principal							# Volta para o menu inicial do programa
}

fun_10() {
    clear
    echo "informe o arquivo que quer copiar"
    read nome_arquivo_copiar
    echo "informe o o destino"
    read nome_diretorio_copiar
    cp $nome_arquivo_copiar $nome_diretorio_copiar		# Copia o arquivo digitado para o diretorio digitado   
    read pause
    principal											# Volta para o menu inicial do programa
}

fun_11() {
    clear
    echo "informe o arquivo que quer mover"
    read nome_arquivo_mover
    echo "informe o o destino"
    read nome_diretorio_mover
    mv $nome_arquivo_mover $nome_diretorio_mover		# Move o arquivo digitado para o diretorio digitado
    read pause
    principal											# Volta para o menu inicial do programa
}

# A funcao chamada de 'principal' inicia o programa e mostra para o usuario as opcoes disponiveis
principal
