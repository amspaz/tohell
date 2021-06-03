#! /bin/bash
#
# quarto.sh - Nosso Quarto Programa em Shell - Condicional if then else
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa ira capturar o valor digitado pelo usuario, ira armazenar na variavel $DIGITADO e ira
# comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado
# o segredo na tela, se não for igual, ira mostrar um erro
#
#
# Exemplo de exceção:
#
# $ ./quarto.sh utah
# Digite o segredo:
# utah
# Meus Parabéns você acertou o segredo. você está na melhor em Linux do Brasil
# $ ./quarto.sh 
# Digite o segredo:
# blue
# ERROU. Esta perdendo tempo na blue
#
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem Vindo ao Detector de Segredos"
echo
echo "Por favor digite os segredo:"
# read ira ler o que o usuario digitou e armazenara na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabéns, você acertou o segredo. Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo na $DIGITADO"
	echo
fi
