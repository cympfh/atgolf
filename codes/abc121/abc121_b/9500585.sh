# https://atcoder.jp/contests/abc121/submissions/9500585
awk 'NR==1{C=$3}
NR==2{split($0,B)}
NR>2{
    x = C
    for (i=1; i<=NF; ++i) x += $i * B[i]
    if (x > 0) ans++
}
END {
    print+ans
}'
