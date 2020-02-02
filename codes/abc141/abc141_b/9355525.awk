# https://atcoder.jp/contests/abc141/submissions/9355525
{
  ok = 1
  for (i=1; i<=length($1); ++i) {
    c = substr($1, i, 1)
    if (i % 2 == 1 && c == "L") ok = 0;
    if (i % 2 == 0 && c == "R") ok = 0;
  }
  if (ok) print "Yes"
  else print "No"
}
