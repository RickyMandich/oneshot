# Aggiungi tutti i file al commit
git add .
# Mostra lo stato dei file
git status

# Crea il nome del commit con data, ora e versione
nomeCommit=$(date "+%Y %m %d %H:%M")
nomeCommit="aggiornamento $nomeCommit"
echo "Messaggio commit: $nomeCommit"
git commit -am "$nomeCommit"

# Esegui il push sul repository remoto
git push -f

sleep 1
# clear