#! /bin/bash
#
# oitavo.sh - Nosso Oitavo Programa em Shell - Laço de Repetição For
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa ira mostrar uma mensagem na tela para arquivo .conf encontrado no diretorio /etc
#
#
# Exemplo de exceção:
#
# $ ./oitavo.sh
# O arquivo etc/xyz.conf foi encontrado no diretorio /etc
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"


echo
echo "Bem Vindo ao Programa para listagem de Conf"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretorio /etc/."
done

exit 0
