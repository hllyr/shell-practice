#!/usr/bin/env bash
for file in "$@"; do
	rows=$(tail -n +2 "$file" | wc -l)
	echo "$file: $rows data rows"
done
