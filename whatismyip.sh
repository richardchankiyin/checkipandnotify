curl -s whatismyip.host | grep ipaddress | sed 's/class=\"ipaddress\"//g;s/ //g;s/<p>//g;s/<\/p>//g'
