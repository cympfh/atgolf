# https://atcoder.jp/contests/dwacon2018-prelims/submissions/1970549
#!/bin/bash

read s
ans=0

while :; do
    if [ -z "$s" ]; then break; fi
    ans=$((ans + 1))
    t=$(echo $s | sed 's/25//g')
    if [ "_$s" = "_$t" ]; then
        echo -1
        exit
    fi
    s=$t
done
echo $ans
