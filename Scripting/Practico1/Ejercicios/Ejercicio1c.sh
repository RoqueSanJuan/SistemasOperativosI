#!/bin/bash

CONTADOR=0
for linea in $(cat $1)
do
	sed -i 'li $linea' $2
done	
