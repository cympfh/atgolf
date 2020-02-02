# https://atcoder.jp/contests/abc085/submissions/2241379
#!/bin/bash

read N Y
Y=$((Y / 1000))

for A in $(seq 0 $N); do
    B=$(( ( (Y-10*A) - (N-A) ) / 4 ))
    C=$(( N - A - B ))

    if (( $(( B >= 0 && C >= 0 && 10*A + 5*B + C == Y )) )); then
        echo $A $B $C
        exit
    fi

done
echo -1 -1 -1
