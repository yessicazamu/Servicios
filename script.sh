#!/bin/bash
#pedir el dato al usuario
echo "Introduzca el nombre del script"
read var1
echo "Descripción"
read descrip
#buscar si existe script
existescript=`ls -a /home/yessi/ | grep -c $var1.sh`
         if [[ $existescript -eq 1 ]]; then
            echo "Ya existe un script con ese nombre,por favor utiliza otro"
	 else
		#creando script
		touch $var1.sh
		chmod 755 $var1.sh
		./$var1.sh
		echo "#!/bin/bash" >> /home/yessi/$var1.sh
		echo "#$var1" >> /home/yessi/$var1.sh
		fecha=$(date)
		autor=$USER
		echo "#$autor" >> /home/yessi/$var1.sh
		echo "#$fecha" >> /home/yessi/$var1.sh
		echo "#$descrip" >> /home/yessi/$var1.sh
		nano $var1.sh
         fi

