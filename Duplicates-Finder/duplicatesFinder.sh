#!/bin/bash
# Usage: ./dupefinder.sh <directory>

DIR="$1"

if [[ -z "$DIR" ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

echo "Scanning $DIR ..."
echo ""

first=1

find "$DIR" -type f -printf "%s %p\n" | sort | awk '
    { lines[NR] = $0; sizes[NR] = $1 }
    END {
        for (i = 1; i <= NR; i++)
            count[sizes[i]]++
        for (i = 1; i <= NR; i++)
            if (count[sizes[i]] > 1) print lines[i]
    }
' | awk '{print $2}' | xargs sha256sum | sort | uniq -w 64 -D | awk '
    {
        hash = $1
        file = $2
        if (hash != prev_hash && prev_hash != "") print "---"
        print hash "  " file
        prev_hash = hash
    }
' | while IFS= read -r line; do
    if [[ "$line" == "---" ]]; then
        echo ""
        first=1
        continue
    fi
    file=$(echo "$line" | awk '{print $2}')
    echo "$line"
    if [[ "$first" == "1" ]]; then
        echo "  (keeping this one)"
        first=0
        continue
    fi
    printf "  Delete this file? [y/N]: "
    read -r answer < /dev/tty
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        rm "$file" && echo "  Deleted."
    fi
done
