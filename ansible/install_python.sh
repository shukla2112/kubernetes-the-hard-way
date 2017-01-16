#!/usr/bin/bash
filename="$1"
IFS=$'\n'
for next in `cat $filename`
do
      echo "server - $next"
      ssh ubuntu@$next -t sudo apt-get install -y python-simplejson
done < "$filename"
exit 0
