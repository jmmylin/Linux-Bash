#!/bin/bash
#script to loop through directories to merge files

mydir=/data/
files="/data/*"

for f in $files
do
    if [ -d "$f" ]
    then
            for ff in $f/*
            do
                    echo "Processing $ff"
            done
    else
            echo "Processing $f"
    fi
done
