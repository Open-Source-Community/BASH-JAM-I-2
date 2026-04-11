This is a file sorter that sorts files into 3 categories. 

Videos

Documents

Pictures

No rights reserved; you are free to use/modify it. However you like, including commercial use.

No credit is required, but it is appreciated. 

To add a new file type copy this line.

-iname '*.ReplaceWithYourFileType' \

To add a new directory to sort to copy this to the end of the file.

if ! find "$pos" -type d -name "ReplaceWithYourNewDirName" | grep -q . ; then
    mkdir 'ReplaceWithYourNewDirName' 
fi 
find "$pos" -maxdepth "$depth" -type f  \( \
            -iname '*.ReplaceWithFileType1' -o \
            -iname '*.ReplaceWithFileType2' -o \
            
            #add new file types  here ^
        \) -exec mv {} $pos/'ReplaceWithYourNewDirName' \;