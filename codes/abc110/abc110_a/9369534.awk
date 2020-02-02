# https://atcoder.jp/contests/abc110/submissions/9369534
function max(x,y){return x<y?y:x}
{
  print max(int($1 $2)+$3, max(int($2 $1)+$3, max(int($2 $3)+$1, max(int($3 $2)+$1, max(int($3 $1)+$2, int($1 $3)+$2)))))
}
