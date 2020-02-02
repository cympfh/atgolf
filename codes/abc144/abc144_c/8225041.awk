# https://atcoder.jp/contests/abc144/submissions/8225041
function min(x,y){return x<y ? x : y} {ans=$1-1;for(i=1;i*i<=$1;++i)if($1%i==0)ans=min(ans,i+$1/i-2);printf "%.0f", ans}
