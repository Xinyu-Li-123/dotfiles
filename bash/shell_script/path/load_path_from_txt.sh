#!/bin/bash

# Path to your input file
FILE="/home/eiger/shell_script/path/paths.txt"

if [ ! -f "$FILE" ]; then
	echo "File not found: $FILE"
	exit 1
fi

while IFS= read -r line || [ -n "$line" ]; do
	# Skip empty lines and comments
	[[ -z "$line" || "$line" == \#* ]] && continue

	if [ -d "$line" ]; then
		export PATH="$line:$PATH"
		# echo "Added: $line"
	fi
done <"$FILE"

# echo "Done. Current PATH:"
# echo "$PATH"
