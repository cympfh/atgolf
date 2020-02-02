# https://atcoder.jp/contests/abc110/submissions/9511032
read a b c

(
echo $(( $a$b + $c ))
echo $(( $b$a + $c ))
echo $(( $a$c + $b ))
echo $(( $c$a + $b ))
echo $(( $b$c + $a ))
echo $(( $c$b + $a ))
) | sort -nr | head -1
