#!/bin/bash

# requires js-beautify:
#	git clone https://github.com/einars/js-beautify
#	sudo ln -s $PWD/js-beautify/python/js-beautify /usr/local/bin/

HERE=`readlink -f $0`
HERE=`dirname $HERE`

if [[ -z $1 ]]; then
	echo "Please give a file to be compiled"
	exit 1
fi

output=${1/.js}.compressed.js

java -jar $HERE/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js_output_file /dev/stdout "$@" --debug | js-beautify - > "$output"
echo OUTPUT: $output
