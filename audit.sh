#!/usr/bin/env bash

find "$1" -name '*.csv' | while IFS= read -r file; do
	rows=$(tail -n +2 "$file" | wc -l | tr -d ' ')
	errors=$(grep -c ERROR "$file")
	echo "$file  rows=$rows  errors=$errors"
done
