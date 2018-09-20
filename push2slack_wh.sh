# This script is for pushing message to slack using webhook approach
# usage push2slack_wh.sh [slackurl] [file]
file=$2
slackurl=$1

echo "file:$file is being read...."

content="$(hostname)\n"

#read file
while read line; do l2=$(echo $line | sed 's/"//g'); content="$content$l2\n"; done < $file

#push to slack
slackmsg="{\"text\":\"$content\"}"
echo $slackmsg
curl -v -X POST -H "Content-type: application/json" --data "$slackmsg" $slackurl

