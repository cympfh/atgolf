# https://atcoder.jp/contests/abc114/submissions/9500620
awk 'function abs(x){return x<0?-x:x}
function min(x,y){return x<y?x:y}
{
  s = $1
  n = length(s)
  ans = 10000
  for(i=1; i<=n-2; ++i) {
      x = int(substr(s,i,1) substr(s,i+1,1) substr(s,i+2,1))
      ans=min(ans,abs(x-753))
      if (abs(x-753)==23)print x
    }
  print ans
}'
