#! /bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Laço de Repetição For
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa é um robo interativo, estilo Alexia, chamado Mr. Robot criado para invadir
# determinadas URLs, buscar vulnerabilidades e também verificar conectividades
#
# Exemplo de exceção:
#
# $ ./decimo.sh
# O arquivo etc/xyz.conf foi encontrado no diretorio /etc
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL
source /doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOlá eu sou o Mr. Robot. Fui criado para atacar. Não sou seu amigo, mas diga:\n o que vocễ quer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga agora!" ACTION
	echo -e "\n"	

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade")
			DADO="$(( $RANDOM % 10))"
			ping -c 4 -4 "${sites[DADO]}"
				
		;;
		*"nmap"*|*"mapear"*|*"portas abertas")
                         DADO="$(( $RANDOM % 10))"
                         nmap -sS "${sites[DADO]}"
		;;
		*"conecte"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 4 ))"
			ssh - l root "${openssh[$DADO]}"
		;;

	esac
done
