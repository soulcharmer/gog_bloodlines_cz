#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `find cestina ! -wholename "*/resource*" ! -wholename "*/materials*" ! -wholename "*/models*"`; do

	if [ -d "$i" ]
		then
			echo "directory : ${i//cestina/cestina_1250}"
			mkdir "${i//cestina/cestina_1250}" 2>/dev/null
		else
			echo "file : $i"
		cstocs utf8 1250 "$i" > "${i//cestina/cestina_1250}"
	fi	
done

IFS=$SAVEIFS
