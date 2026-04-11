#!/bin/bash
pos=$(pwd)
depth=$1
sort=true
sortv=true
sortp=true
sortd=true

if [ -z $1 ]; then
depth=1
fi
# option handler
if [ $1 = "-h" ]; then
    echo "This is a simple file sorter that sorts files into Videos, Pictures and documents any files that do not  match the known file types will not be sorted
    sorter [will sort with depth of 0 (current directory only)]
    
    OPTIONS
    
    -v sorts videos only and the second argument is the depth 
    
    -p sorts pitures only and the second argument is the depth
    
    -d sorts documents only and the second argument is the depth
    
    -l determines the depth of the search for files
    
    USAGE
    
    sorter [option]
    
    sorter -l [depth]
    "
    sort=false
elif [ $1 = "-v" ]; then
    sortd=false
    sortp=false
    depth=1
elif [ $1 = "-p" ]; then
    sortv=false
    sortd=false
    depth=1
elif [ $1 = "-d" ]; then
    sortv=false
    sortp=false
    depth=1
elif [ $1 = "-l" ]; then
    depth=$2
fi


#dir checker
if ! find "$pos" -type d -name "Videos" | grep -q . ; then
    mkdir Videos 
fi
if ! find "$pos" -type d -name "Pictures" | grep -q . ; then
    mkdir Pictures 
fi
if ! find "$pos" -type d -name "Documents" | grep -q . ; then
    mkdir Documents 
fi

# actual sorter
if [ $sort = true ]; then
    if [ $sortv = true ]; then
        find "$pos" -maxdepth "$depth" -type f  \( \
            -iname '*.mp4' -o \
            -iname '*.mov' -o \
            -iname '*.avi' -o \
            -iname '*.mkv' -o \
            -iname '*.wmv' -o \
            -iname '*.flv' -o \
            -iname '*.webm' -o \
            -iname '*.m4v' -o \
            -iname '*.mpg' -o \
            -iname '*.mpeg' -o \
            -iname '*.3gp' -o \
            -iname '*.ts' -o \
            -iname '*.m2ts' -o \
            -iname '*.vob' \
            
            #add new file types  here ^
        \) -exec mv {} $pos/Videos \;
    fi
    #pictures
    if [ $sortp = true ]; then
        find "$pos" -maxdepth "$depth" -type f  \( \
            -iname '*.jpg' -o \
            -iname '*.jpeg' -o \
            -iname '*.png' -o \
            -iname '*.gif' -o \
            -iname '*.bmp' -o \
            -iname '*.tiff' -o \
            -iname '*.tif' -o \
            -iname '*.webp' -o \
            -iname '*.svg' -o \
            -iname '*.ico' -o \
            -iname '*.raw' -o \
            -iname '*.cr2' -o \
            -iname '*.nef' -o \
            -iname '*.psd' \
            
            #add new file types  here ^
        \) -exec mv {} $pos/Pictures \;
    fi
    #Documents
    if [ $sortd = true ]; then
        find "$pos" -maxdepth "$depth" -type f  \( \
            -iname '*.pdf' -o \
            -iname '*.doc' -o \
            -iname '*.docx' -o \
            -iname '*.txt' -o \
            -iname '*.rtf' -o \
            -iname '*.odt' -o \
            -iname '*.xls' -o \
            -iname '*.xlsx' -o \
            -iname '*.ppt' -o \
            -iname '*.pptx' -o \
            -iname '*.epub' -o \
            -iname '*.md' -o \
            -iname '*.tex' \
            
            #add new file types  here ^
        \) -exec mv {} $pos/Documents \;
        fi
fi