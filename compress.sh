#!/bin/bash

if [[ $# == 2 ]]; then
	if [[ $1 == *.png ]]; then
		optipng -o7 $1 -out $2
	fi
	if [[ $1 == *.jpg ]]; then
		jpegtran -copy none -optimize $1 > $2
	fi
	if [[ $1 == *.jpeg ]]; then
		jpegtran -copy none -optimize $1 > $2
	fi
else
	echo "USAGE: ./compress.sh input.png output.png"
fi

