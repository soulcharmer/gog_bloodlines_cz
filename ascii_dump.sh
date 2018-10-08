#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `find cestina/vdata/hackterminals`; do

	if [ -d "$i" ]
		then
			echo "directory : ${i//cestina/cestina_ascii}"
			mkdir "${i//cestina/cestina_ascii}" 2>/dev/null
		else
			echo "file : $i"
		if file "$i" | grep UTF-8 1>/dev/null
		then
			cstocs utf8 ascii "$i" > "${i//cestina/cestina_ascii}"
		else
			cstocs 1250 ascii "$i" > "${i//cestina/cestina_ascii}"
		fi
	fi	
done

IFS=$SAVEIFS
