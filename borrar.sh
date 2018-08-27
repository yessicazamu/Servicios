#!/bin/bash
#borrar
#yessi
#dom ago 26 19:53:33 CDT 2018
#Este script nos permite eliminar y recuperar un archivo

existePapelera=`ls -a /home/yessi/ | grep -c Papelera`
	 if [[ $existePapelera -eq 0 ]]; then
            echo "La papelera no se encuentra creada, se procedera a crearla"
             mkdir /home/yessi/Papelera
         fi
         echo "Ingrese el nombre del archivo o carpeta a borrar"
         read archivo
	 echo "Esta seguro que desea eliminar el archi Si=0"
	 read respuesta
existearchivo=`ls -a /home/yessi/ | grep -c $archivo`
         if [[ $existearchivo -eq 0 ]]; then
            echo "no existe el archivo"
         fi

	if [[ $respuesta =  0 ]]; then
		 mv -i $archivo /home/yessi/Papelera/$archivo
	else
		echo "no deseas eliminar"
                exit 1
	fi


