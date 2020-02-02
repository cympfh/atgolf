# https://atcoder.jp/contests/abc116/submissions/9500611
awk '{
  i = 1
  while(!a[$1]){
    i += 1
    a[$1] = 1
    if ($1 % 2 == 0) $1 /= 2
    else $1 = 3 * $1 + 1
  }
  print i
}'
