#!/bin/bash 
read -p "The name of your file : " name
read -p "Enter extention : " ext
echo "you want change file: $name with extention: $ext"
result=0
DOT="."
for file in *; do
	fullname="${file##/}"
	#echo $fullname
	filename="${file%.*}"
	#echo $filename
	EXTension="${file##*.}"
	#echo $EXTension
	
	if (("$filename" == "$name" )); then	
        	newfile="$filename$DOT$ext"
        	echo "File: $filename with extention: $EXTension will rename in file $newfile"
        	mv $fullname $newfile
		result=1
	fi
done
if (($result == "1"));
	then echo "Ext change done"
	else echo "File is not found"
fi



