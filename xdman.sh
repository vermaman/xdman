#!/bin/bash
if [ $EUID -eq 0 ];then
	echo "It's not recomended to run XDM  as root, as it can cause problems"
fi
java -Dsun.java2d.xrender=false -jar /usr/share/xdman/xdman.jar "$@"
