# https://atcoder.jp/contests/abc126/submissions/9356294
function mo(x){
  x = int(x)
  return 1 <= x && x <= 12
}
{
  head = substr($1, 1, 2)
  tail = substr($1, 3, 2)
  print (mo(head) && mo(tail)) ? "AMBIGUOUS" : (!mo(head) && !mo(tail)) ? "NA" : (mo(head) && !mo(tail)) ? "MMYY" : "YYMM"
}
