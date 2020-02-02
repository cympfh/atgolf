# https://atcoder.jp/contests/abc131/submissions/9355922
{for(;i<4;)substr($1,++i,1)==substr($1,i+1,1)&&b=1}
b{print"Bad"}
!b{print"Good"}
