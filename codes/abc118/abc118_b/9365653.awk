# https://atcoder.jp/contests/abc118/submissions/9365653
NR==1{
  n = $1
  m = $2
}
NR > 1 {
  for(i=2;i<=NF;++i)k[$i] += 1
}
END {
  for(i=1;i<=m;++i)if(k[i]==n)++a
  print+a
}
