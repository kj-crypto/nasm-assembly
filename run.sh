#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "No file specified"
	exit 1
fi

pwndbg -ex "set show-flags on" \
-ex "break _start" -ex "run" \
$1
