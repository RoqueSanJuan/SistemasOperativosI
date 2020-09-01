#!/bin/bash

cat $1 | tr [:lower:] [:upper:] | tee $1 | cat
