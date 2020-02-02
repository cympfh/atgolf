# https://atcoder.jp/contests/abc101/submissions/9372572
{
  for(i=1;i<=length($1);++i)x+=substr($1,i,1)=="+"?1:-1
  print x
}
