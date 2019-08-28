#!/bin/sh
# i used this to get the real dl urls from the urls on the dl site
# before i got the format
lynx -dump "$1" | grep '   1\. ' | sed 's/   1\. //'
