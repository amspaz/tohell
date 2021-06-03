#! /bin/bash
#
# sexto.sh - Nosso Sexto Programa em Shell - Laço de Repetição While
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel for menor
# que 10, ele ira mostrar a mensagem na tela que o valor e menor que 10 e mostrara o valor da
# variavel, quando o valor atinger 10 o programa sera finalizado
# 
#
#
# Exemplo de exceção:
#
# $ ./sexto.sh utah
# O valor da Variavel é 0, que é menor que 10
# O valor da Variavel é 1, que é menor que 10
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem Vindo ao Programa de Números"
echo

while [ $NUMERO -lt "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0
