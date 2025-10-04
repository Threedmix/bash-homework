#!/bin/bash

directory="$1"

files=$(find "$directory" -type f | wc -l)
dirs=$(find "$directory" -type d | wc -l)
largest_file=$(find "$directory" -type f -exec du -b {} + | sort -nr | head -n1)

echo "Files: $files"
echo "Dirs: $dirs"
echo "Largest file: $(basename "$largest_file")"
