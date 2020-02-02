# https://atcoder.jp/contests/abc126/submissions/9500455
awk 'function lower(x){
  return x == "A" ? "a" : x == "B" ? "b" : "c"
}
NR<2{n=$1;k=$2}
NR>1{
  for (i = 1; i <= n; ++i) {
    c = substr($1, i, 1)
    s = s (i == k ? lower(c) : c)
  }
  print s
}'
