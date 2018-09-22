#/bin/bash

dir="$(pwd)"
resultcommand="_housekeep.sh"
resultcron="_housekeep.sh.cron"

echo "$dir/housekeep.sh \"$dir\"" > $resultcommand

chmod 755 $resultcommand

echo "59 23 * * * $dir/$resultcommand" > $resultcron
