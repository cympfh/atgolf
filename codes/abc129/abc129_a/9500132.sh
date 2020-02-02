# https://atcoder.jp/contests/abc129/submissions/9500132
awk '{
  a = $1 + $2 + $3
  if ($1>=$2&&$1>=$3) a -= $1;
  else if ($2>=$1&&$2>=$3) a -= $2;
    else a -= $3;
    print a
}'
