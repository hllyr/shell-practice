#!/usr/bin/env bash
for file in "$@"; do
	rows=$(tail -n +2 "$file" | wc -l)
	echo "holly change 2 needed for claude $file: $rows data rows"
done
