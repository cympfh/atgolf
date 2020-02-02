# https://atcoder.jp/contests/abc118/submissions/9500595
awk '1,$0=$2%$1?$2-$1:$2+$1'
