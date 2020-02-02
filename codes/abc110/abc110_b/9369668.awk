# https://atcoder.jp/contests/abc110/submissions/9369668
NR==1{
  X = $3
  Y = $4
}
NR==2{
  max = X
  for(i=1;i<=NF;++i) if(max<$i) max = $i
}
NR==3{
  ans = "No War"
  for(i=1;i<=NF;++i) if($i<=max) ans="War"
  if(Y<=max) ans="War"
  print ans
}
