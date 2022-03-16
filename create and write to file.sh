#!/usr/bin/bash

echo "Hello world" 

rm deleteme.txt
mkdir new_dir
cd new_dir
touch date.txt

script_out=`date`  

echo $script_out >> date.txt 
