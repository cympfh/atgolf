# https://atcoder.jp/contests/abc120/submissions/9500588
awk '{for(i=$1;$3;--i)if($1%i==0 && $2%i==0){$3--;if($3==0)print i}}'
