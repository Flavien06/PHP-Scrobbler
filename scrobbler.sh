#!/bin/bash
lastfm_user="xxxxxx"
lastfm_pass="xxxxxx"

artist="$1"
track="$2"
album="$3"

php example_scrobbler.php --username $lastfm_user --password $lastfm_pass --artist "$artist" --track "$track" --album "$album" --trackDuration 30 2>/dev/null 0>/dev/null 1>/dev/null

echo "SCROBBLER: $artist - $track - $album"

exit 0