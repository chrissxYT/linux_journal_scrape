#!/bin/sh
cp urls2dl filtered_urls
cnt=$(cat checkedurls | wc -w)
I=0

for i in $(cat checkedurls) ; do
        echo "$I/$cnt"
        grep -v "^$i\$" filtered_urls > .filtered_urls
        mv .filtered_urls filtered_urls
        I=$((I + 1))
done
