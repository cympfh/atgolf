# https://atcoder.jp/contests/abc081/submissions/2241521
for a in $(tail -1); do
    c=0
    while (( $(( a % 2 == 0 )) )); do
        a=$(( a / 2 ))
        c=$(( c + 1 ))
    done
    echo $c
done |
awk '
BEGIN { ans = 100000 }
{ ans = ans < $1 ? ans : $1 }
END {print ans}'  # take minimum
