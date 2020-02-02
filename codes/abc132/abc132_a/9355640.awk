# https://atcoder.jp/contests/abc132/submissions/9355640
{
  for (i=1; i<=4; ++i) c[substr($1, i, 1)]++
  ok = 1
  for (i=1; i<=4; ++i) if (c[substr($1, i, 1)] != 2) ok = 0
  if (ok) print "Yes"
  else print "No"
}
