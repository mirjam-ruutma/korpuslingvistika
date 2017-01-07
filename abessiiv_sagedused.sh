#Skripti väljundiks on fail, kus on abessiivi esinemise sagedused murdealade kaupa.
#Sisendiks fail 'abessiiv.txt' (leiad repositooriumist)

#! /bin/tcsh
cat abessiiv.txt \
#Kustutab ülearuse info ja jätab alles ainult murdeala
| sed 's/\([^;]*\);.*$/\1/' \
#Sagedusloend tähestikulises järjekorras
| sort | uniq -c | sort -nr > abessiiv_sagedused.txt
