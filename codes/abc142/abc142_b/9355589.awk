# https://atcoder.jp/contests/abc142/submissions/9355589
NR == 1 {
  K = $2
  RS = FS
}
NR > 1 {
  if ($1 >= K) ++a
}
END {
  print +a
}
