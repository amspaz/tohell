#! /bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Script de Backup Completo.
#
# Homepage: http:/utah.com.br
# Autor: Allysson Paz <allysson_marcelo@hotmail.com>
# Mantenedor: Grupo Utah
#
# - - - - - - - - - - - - - - - - - - - - - - - - --  -- 
#
# Este programa sera usado para realizar um backup full de arquivos localizados em um servidor onde
# teremos que copiar a pasta /srv/samba
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

# BKDIBR - Local onde será armazenado os arquivos de backup
BKPDIR="/srv/backup/"
# FILEDIR - Local onde estão os arquivos de origem, que faremos backup.
FILEDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup.error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="allysson_marcelo@hotmail.com"
SENDUSER="root@allsson.local"


echo -e "\n"
echo "Iniciando o Script de Backup"
echo -e "\n"

verificar (){
 if [ $? -eq 0 ]; then
         echo "Comando Ok"
 else
         echo "ERRO"
	 mail_err
         exit 1
 fi
}

mail () {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a  $LOGFILE -m "Segue"
}
mail_err(){
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Erro no Backup" -a $ERRORLOG -m "Segue"
}

rsync -avu $FILEDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar

[ -f "$COMPACT" ] || $COMPACT
verificar

exit 0
