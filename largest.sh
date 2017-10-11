#!/bin/bash

a="$1"; b="$2"; c="$3"; d="$4"

if [ -z "$a" ] || [ -z "$b" ] || [ -z "$c" ]; then
echo "Not enought parameters"
elif [ -n "$d" ]; then
echo "Too many parameters"
elif [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
echo "$a"
elif [ "$b" -gt "$c" ]; then
echo "$b"
else
echo "$c"
fi
