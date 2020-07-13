#!/bin/bash

DIRECTORY=`dirname $0`

case "$1" in
start)
  $DIRECTORY/warp.sh &
  echo $!>$DIRECTORY/warp.pid
  ;;
stop)
  pkill -P `cat $DIRECTORY/warp.pid`
  rm $DIRECTORY/warp.pid
  ;;
restart)
  $0 stop
  $0 start
  ;;
status)
  if [ -e $DIRECTORY/warp.pid ]; then
    echo Warp core online, pid `cat $DIRECTORY/warp.pid`
  else
    echo Warp core offline
    exit 1
  fi
  ;;
*)
  echo "Useage: $0 {start|stop|status|restart}"
esac

exit 0

