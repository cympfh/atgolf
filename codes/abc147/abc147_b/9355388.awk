# https://atcoder.jp/contests/abc147/submissions/9355388
{for(m=length($1);i<m/2;++i)substr($1,i+1,1)!=substr($1,m-i,1)&&++a;print +a}
