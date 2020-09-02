#!/bin/bash

#cambia para que al leear ls tome como separacion el salto de linea y no el espacio tambien
IFS=$'\n'


cd "$1"
Contador=0
for archivo in $(ls); 
do
	NewName=$(echo "$archivo" | tr ' ' '_' | tr [:upper:] [:lower:])
	if [ "$archivo" != "$NewName" ];
	then
		echo "- Se  modifico el archivo $archivo por $NewName"
      		mv $archivo $NewName
		let Contador++
	fi
done
echo "- Numero de archivos Modificados $Contador"
