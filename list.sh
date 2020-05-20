#!/bin/bash
lastfm_user="xxxxxx"
lastfm_pass="xxxxxx"
input=list.txt

while IFS= read -r line
	do
	artist=$(echo $line | cut -f1 -d-)
    track=$(echo $line | cut -f2 -d-)

	php example_scrobbler.php --username $lastfm_user --password $lastfm_pass --artist "$artist" --track "$track" --trackDuration 30
	echo "SCROBBLER: $artist - $track - $album"
	sleep 60
done < "$input"

exit 0