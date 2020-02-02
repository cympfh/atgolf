# https://atcoder.jp/contests/abc133/submissions/9500051
awk 'function min(x,y){return x<y?x:y}{
    print min($1 * $2, $3)
}'
