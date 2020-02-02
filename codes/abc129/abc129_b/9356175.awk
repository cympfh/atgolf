# https://atcoder.jp/contests/abc129/submissions/9356175
function abs(x){return x<0?-x:x}
function min(x,y){return x<y?x:y}
c++{
  for(i=1;i<=NF;++i)w+=$i
  a=w
  for(i=1;i<=NF;++i){w-=$i;v+=$i;a=min(a, abs(w-v))}
  print a
}
