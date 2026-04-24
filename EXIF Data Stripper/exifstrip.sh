#!/bin/bash

# file passed as param to be edited
# flag [o/*] is to allow user to overwrite changers (much much cleaner) or keep a copy of file (multiple _original in dir hazard).
flag="$1"
file="$2"

# check if exiftool exists and install it if not
if ! command -v exiftool &> /dev/null; then
    	echo "Exiftool not found. Installing the tool for you :)"
    	curl -L https://exiftool.org -o exiftool

    	chmod +x exiftool

    	# tell the script to use the local version since it is installed in script dir,
    	# avoid using './' for script code and works if already exists.
	# shopt -> shell option, -s -> set , expand alias -> look at defined aliases to use.
    	shopt -s expand_aliases
    	alias exiftool='./exiftool'
fi

tags=(
    -Artist= -ModifyDate= -FocalLength= -Flash= 
    -CreateDate= -DateTimeOriginal= -SceneType= 
    -ShutterSpeedValue= -GPSTimeStamp= -GPSDateStamp= 
    -Make= -Software= -Model= -InternalSerialNumber= -SerialNumber= 
    -UserComment="this file's been saved from your dirty hands attacker!"
)

if [[ "$flag" == "o" ]]; then
	echo -e "before: "
	exiftool "$file"
	exiftool "${tags[@]}" -overwrite_original "$file"
	echo -e "after: "
	exiftool "$file"
else
	exiftool "${tags[@]}" "$file"
fi
echo "Proccess completed successfully for file $file"
