#!/bin/bash
#recuperar
#yessi
#dom ago 26 21:47:04 CDT 2018
#Este archivo nos permite recuperar archivos

echo "Ingrese el nombre del archivo o carpeta a recuperar"
read archivo
existearchivo=`ls /home/yessi/Papelera/$archivo | grep -c $archivo`
if [[ $existearchivo -eq 1 ]]; then
	mv -i /home/yessi/Papelera/$archivo $archivo
	echo "recuperado"
else
	echo "el archivo que desea recuperar no se encuentra"
fi
