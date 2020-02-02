# https://atcoder.jp/contests/abc076/submissions/9651164
BEGIN {
    FS = RS
    RS = "@"
}
1,$0=$2*2-$1
