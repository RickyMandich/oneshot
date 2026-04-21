#!/bin/bash

# Aggiungi tutti i file al commit
git add .
# Mostra lo stato dei file
git status


while getopts "m:" opt; do
  case $opt in
    m) echo "messaggio di commit: $OPTARG"; message="$OPTARG";;
    ?,h) echo "Invalid option: -$OPTARG"; exit 1 ;;
  esac
done


# Crea il nome del commit con data, ora e versione
nomeCommit="aggiornamento $(date "+%Y %m %d %H:%M") - $message"
echo "Messaggio commit: $nomeCommit"
git commit -am "$nomeCommit"

# Esegui il push sul repository remoto
git push