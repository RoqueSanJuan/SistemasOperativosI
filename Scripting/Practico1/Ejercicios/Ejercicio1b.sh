#!/bin/bash

#Reemplaza los numeros de un archivo por una letra por parametro

cat $1 | tr [0-9] "${2}" | tee $1 | cat
