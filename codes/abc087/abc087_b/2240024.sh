# https://atcoder.jp/contests/abc087/submissions/2240024
read A; read B; read C; read X

for a in $(seq 0 $A); do
    for b in $(seq 0 $B); do
        c=$(( ( X - 500 * a - 100 * b ) / 50 ))
        [ 0 -le $c -a $c -le $C ] && echo y
    done
done | wc -l
