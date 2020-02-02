# https://atcoder.jp/contests/abc112/submissions/9500638
awk 'BEGIN{FS=RS;RS=""}
$1==1{print "Hello World"}
$1==2{print $2+$3}'
