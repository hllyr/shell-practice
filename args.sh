#!/usr/bin/env bash
echo "I got $# arguments"
for arg in "$@"; do
    echo "One argument: $arg"
done
