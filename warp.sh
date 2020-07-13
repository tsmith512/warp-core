#!/bin/bash

DIRECTORY=`dirname $0`

while true;
do
  omxplayer -o local --no-osd --no-keys --vol 150 $DIRECTORY/enterprise-warp-core.mp3 1>/dev/null 2>/dev/null
done;
