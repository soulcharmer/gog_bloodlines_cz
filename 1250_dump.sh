#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `find cestina ! -wholename "*/cl_dlls*" ! -wholename "*/resource*" ! -wholename "*/materials*" ! -wholename "*/models*" ! -wholename "*/vdata/hackterminals*" ! -path *.mp3* ! -path *.vcd* ! -path *.wav* ! -path strings.txt*`; do

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
