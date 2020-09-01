indice=0
IFS=$'\n' #Para que el for tome los items con una separación en los saltos de línea (y no en cualquier 'blanco')
for i in $(find "$HOME" -maxdepth 3 -type f -size +100k); do #Para cada archivo en el HOME de más de 100kB (y lo limité a sólo el HOME o no termino más)
		echo "$i"
		echo "¿Borrar o comprimir? (b/c)"
		read opcion
		if [ "$opcion" == "b" ]; then
			echo "Se Borraria el archivo"
			#rm "$i"   #Comentado o me borra todo :S
			echo "$(date '+%d/%m/%Y %H:%M:%S') - $i" >> ./BorradosEjer3.txt
		elif [ "$opcion" == "c" ]; then
			echo "Se Comprimiria el archivo"
			#rar a "$PWD/$indice.rar" "$i"
			let indice++
		fi
done
