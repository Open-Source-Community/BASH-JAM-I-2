#!/bin/bash

cd -- "$(dirname "$0")" >/dev/null 2>&1
currentDir=$(pwd -P)

chmod u+rwx $currentDir/theScript.sh # Makes sure that the user has execute permissions on the script (otherwise the cronjob for that script won't work)

### Failed expirement ###
# if [[ -z $(crontab -l 2>/dev/null | grep "$currentDir/theScript.sh") ]]; then
#     (
#         crontab -l
#        echo " * * * * * DISPLAY=$DISPLAY /bin/bash /home/ali-ahmed/programmingRelated/Bash/funnyThing/theScript.sh"
#    ) | crontab -
# fi
# crontab -l 2>/dev/null | grep "$currentDir/theScript.sh"
echo "$currentDir"

dirs=()
if [[ -z $1 ]]; then
    # Makes an array of the directories in the root directory
    for dir in */; do
        dir=${dir%/}

        if [ "$(ls -F $dir | grep '[^/]$' | wc -l)" -gt 0 ]; then
            dirs+=("$dir")
        fi
    done
else
    # Makes an array of the directories specified in the positional parameters (exclusing the ones that contain no files)
    for dir in $@; do
        dir=${dir%/}

        if [ "$(ls -F $dir | grep '[^/]$' | wc -l)" -gt 0 ]; then
            dirs+=("$dir")
        fi
    done
fi

# Chooses a random directory from the dirs array
randDir=${dirs[$(($RANDOM % ${#dirs[@]}))]}

files=()

for file in $(ls -F $randDir | grep '[^/]$'); do
    files=("${files[@]}" "$file")
done

randFile=${files[$(($RANDOM % ${#files[@]}))]}

# Run mpv, set the window geometry and make it non-interactive
/bin/mpv --vo=x11 \
    --no-input-default-bindings \
    --no-input-cursor \
    --no-window-dragging \
    --no-border \
    --ontop \
    --geometry=480x480-0+60 \
    --no-osc \
    --no-osd-bar \
    --osd-level=0 \
    --cursor-autohide=no \
    --input-conf=/dev/null \
    --image-display-duration=10 \
    $randDir/$randFile

echo "$randDir"
echo "$randFile"
