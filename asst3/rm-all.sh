#!/bin/bash
directory="./"
for dir in "$directory"/*
do
    if [ -d "$dir" ]; then
        if [ -e "$dir/Makefile" ]; then
            echo "Makefile found in $dir. Running make clean."
            (cd "$dir" && make clean)
        else
            echo "No Makefile found in $dir."
        fi
    fi
done