#!/bin/bash

total_lines=0
file_count=0

for file in *.pot; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        total_lines=$((total_lines + lines))
        file_count=$((file_count + 1))
    fi
done

if [ $file_count -eq 0 ]; then
    echo "No .pot files found in this folder."
else
    average_lines=$((total_lines / file_count))
    echo "Average lines of code: $average_lines"
fi