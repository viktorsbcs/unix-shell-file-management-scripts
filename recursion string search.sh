#!/usr/bin/bash

file_path=""
number_of_lines_matched=0
number_of_files_moved=0

for file in $(grep --exclude=\3.sh -r "moveme" $1/*); do
    file_path=${file%:*}

    if [[ -f "$file_path" ]]
    then
        mv "$file_path" $2
        if [ $? -eq 0 ]
        then
            ((number_of_files_moved=number_of_files_moved+1))
        fi
    fi

    ((number_of_lines_matched=number_of_lines_matched+1))
done



echo $number_of_lines_matched
echo $number_of_files_moved

