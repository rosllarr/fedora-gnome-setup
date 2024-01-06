#!/usr/bin/env bash

while IFS= read -r line; do
    # skip line with empty shortcut
    if [[ $line == *"@as"* ]]; then
        continue
    fi

    arg=$(sed 's/\(\[[^]]*\]\)/"\1"/g' <<< "$line")
    echo $arg
    # gsettings set $arg
done < "shortcuts.list"
