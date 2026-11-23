#!/usr/bin/env bash
csvs=$(find "$1" -name '*.csv')
for file in $csvs; do
	row=$(tail -n +2 "$file" | wc -l)
	error=$(grep -c ERROR "$file")
	echo "file = $file rows=$row errors=$error"
done
