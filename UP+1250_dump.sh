#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `find UP_Plus_CZ ! -wholename "*/resource*" ! -wholename "*/materials*" ! -wholename "*/models*"`; do

	if [ -d "$i" ]
		then
			echo "directory : ${i//UP_Plus_CZ/UP_Plus_CZ_1250}"
			mkdir "${i//UP_Plus_CZ/UP_Plus_CZ_1250}" 2>/dev/null
		else
			echo "file : $i"
		cstocs utf8 1250 "$i" > "${i//UP_Plus_CZ/UP_Plus_CZ_1250}"
	fi	
done

IFS=$SAVEIFS
