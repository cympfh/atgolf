# https://atcoder.jp/contests/abc140/submissions/9499924
awk 'NR==1 {
  n = $1
}
NR==2 {
  for (i=1;i<=n;++i) a[i] = $i
}
NR==3 {
  for (i=1;i<=n;++i) ans += $i
}
NR==4 {
  for (i=1;i<n;++i) c[i] = $i
}
END {
  for (i=1;i<n;++i) if (a[i] + 1 == a[i + 1]) ans += c[a[i]];
  print ans
}'
