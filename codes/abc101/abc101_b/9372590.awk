# https://atcoder.jp/contests/abc101/submissions/9372590
{
  for(i=1;i<=length($1);++i)s+=substr($1,i,1)
  print $1%s==0?"Yes":"No"
}
