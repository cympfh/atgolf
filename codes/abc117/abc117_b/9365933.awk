# https://atcoder.jp/contests/abc117/submissions/9365933
c++{
  for(i=1;i<=NF;++i)s+=$i
  ans = "Yes"
  for (i=1; i<=NF; ++i) if ($i*2>=s) ans = "No"
  print ans
}
