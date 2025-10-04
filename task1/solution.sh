#!/bin/bash

directory="$1"
search="$2"
replace="$3"

find "$directory" -name "*.txt" | while IFS= read file; do
    sed -i "s/${search}/${replace}/g" "$file"
done
