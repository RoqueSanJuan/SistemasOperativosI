#!/bin/bash

for extension in $(echo $(cut -d. -f2 $1))
do
	case $extension in
		gz)
			echo "Un archivo con extension gz"
			echo "se utilizaria el comando gzip -d archivo.gz"
			;;
		bz2)
			echo "Un archivo con extension bz2"
			echo "Se utilizaria el comando bzip2 -d archivo.bz2"
			;;
		tar)
		       	echo "Un archivo con extension tar"
			echo "Se utilizaria el comando tar xvf archivo.tar"
			;;
		*)	
			echo "Archivo con otra extension o no Comprimido"
			;;
	esac	
done
