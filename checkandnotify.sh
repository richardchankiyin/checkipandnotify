#!/bin/bash

if [ "$#" -lt 2 ]; then echo "usage [sh] [current dir] [slack wh]"; exit -1; fi

dir="$1"

#log file
logfile="$dir/_run_log_$(date +%Y%m%d).out"

echo "---------------running check at $(date +%Y%m%d%H%M%s)---------------" >> $logfile

#old ip file
oldipfile="$dir/_oip.log"

if [ ! -f "$oldipfile" ]; then touch "$oldipfile"; fi

#read oldip
read oldip <  $oldipfile

#get current ip
curip=$($dir/whatismyip.sh | head -1)
wh="$2"

#ip content file
contentfile="$dir/_contentfile"

echo "oldip--$oldip curip--$curip" >> $logfile 
if [ "$oldip" == "$curip" ]
then
   echo "same ip" >> $logfile
else
   #write oip
   echo $curip > $oldipfile
   #prepare contentfile 
   echo "new ip: $curip" > $contentfile
   $dir/push2slack_wh.sh $wh $contentfile  >> $logfile  2>> $logfile 
fi

