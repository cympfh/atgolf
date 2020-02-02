# https://atcoder.jp/contests/abc075/submissions/1681571
read a b c
[ $a = $b ] && echo $c || ( [ $a = $c ] && echo $b || echo $a )
