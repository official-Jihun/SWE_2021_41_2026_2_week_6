#!/bin/bash

SRC_DIR="files"


for filepath in "$SRC_DIR"/*; do
    if [ -f "$filepath" ]; then
        filename=$(basename "$filepath")

        first_char=$(echo "$filename" | cut -c 1 | tr '[:upper:]' '[:lower:]')

        if [[ "$first_char" =~ [a-z] ]]; then
            mv "$filepath" "$first_char/"
        fi
    fi
done
