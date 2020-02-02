# https://atcoder.jp/contests/abc083/submissions/8533548
function d(x){return x<10?x:x%10+d(int(x/10))}
{s=0;for(i=1;i<=$1;++i){f=d(i);if($2<=f&&f<=$3)s+=i}print s}
