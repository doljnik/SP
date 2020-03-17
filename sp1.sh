#!/bin/bash
echo "Program for archiving"
echo "You can use this program to archive or extract"
echo "Developer:ILIA SITNIKOV"
lupa=1 kuk=1 pupa=1 tutu=1
until [ $lupa = "exit" ] 
do
read -p  "Press 1 to archive or press 2 to extract or exit to exit " lupa
if  [ $lupa == "1" ]
then
	read -p  "Write the path katalog " kuk
	if [ -d "$kuk" ]
	then
		read -p "Write name to archive " pupa 
		tar -cf  $pupa.tar $kuk  
	else
		echo "Not found" >&2
	fi

elif [ $lupa == "2" ]
then
	read -p "Write the path archive" tutu
	if [ -f "$tutu" ]
	then
		tar -xf $tutu
	else 
		echo "atchive not found" >&2
	fi
elif [ $lupa == "exit" ]
then
	exit
else
	echo "Please 1 or 2 next time" >&2
fi
done
