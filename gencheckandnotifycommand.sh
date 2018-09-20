#/bin/bash

if [ "$#" -lt 1 ]; then echo "usage: sh [wh] "; exit -1; fi

dir="$(pwd)"
wh="$1"
resultcommand="_checkandnotify.sh"
resultcron="_checkandnotify.sh.cron"

echo "$dir/checkandnotify.sh \"$dir\" \"$wh\"" > $resultcommand

chmod 755 $resultcommand

echo "* * * * * $dir/_checkandnotify.sh" > $resultcron


