#! /bin/bash
#
# quinto.sh - Nosso Quinto Programa em Shell - Condicional if then else
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa ira capturar o primeiro parametro passado depois do programa, ira armazenar na variavel $1
# caso o valor seja start, executar o trecho de comandos do start, caso seja stop
# executara o trecho do comando stop, caso seja status executar o trecho status e caso não seja
# nenhum dos valores acima irá mostra a mensagem para usar os valores start, stop, status.
#
#
# Exemplo de exceção:
#
# $ ./quinto.sh utah
# Bem vindo ao Program Stronger.
# Iniciando o programa
# . . .
# . . . . . . 
# . . . . . . . . .
# . . . . . . . . . . . .
# . . . . . . . . . . . . . .
# Programa iniciado com Sucesso.
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL


PID= "/tmp/stronger.pid"
echo
echo "Bem Vindo ao Stronger"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger"
		echo ". . . . . ."
		sleep 2s
		echo ". . . . . . . . . . "
		sleep 2s
		echo ". . . . . . . . . . . . . . "
		sleep 2s
		echo ". . . . . . .  . . . . . . . . .  . . . ."
		touch "$PID"
		echo "Programa Stronger Iniciado com Sucesso"
		;;
	stop)
		echo
		echo "Parando o programa Stronger"
		echo ". . . . . ."
		sleep 2s
		echo ". . . . . . .  . . . ."
		sleep 2s
		echo ". . . . . . .  . . . . . . ."
		sleep 2s
		echo ". . . . .  . . . . . . . .  . . . ."
		rm "$PID"
		echo "Programa Stronger Parado com sucesso"
		;;
	status)
		echo
		echo "Verificado o status do Programa Stronger"
		echo
		if [ -f "$PID" ]; then
			echo "O programa Stronger está em execução"
		else
			echo "O programa Stronger está parado"
		fi
		;;
	*)
		echo "Por favor Digite ./quinto start | stop | status"
		;;
esac

exit 0
