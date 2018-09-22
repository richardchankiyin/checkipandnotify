#!/bin/bash

if [ "$#" -lt 1 ]; then echo "usage [sh] [current dir]"; exit -1; fi

dir="$1"
filepattern="_run_log*"
days="+3"

for x in $(find $dir -name "$filepattern" -mtime "$days"); do echo $x; rm -fR $x; done

