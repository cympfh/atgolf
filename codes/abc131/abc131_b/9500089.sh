# https://atcoder.jp/contests/abc131/submissions/9500089
awk 'function abs(x){
  return x < 0 ? -x : x
}
{
  N = $1
  L = $2
  a = N*(N-1)/2+N*L
  m = abs(L)
  k = L
  for(i=0;i<N;++i) if (m > abs(L + i)) {m = abs(L + i); k = L + i}
  print a - k
}'
