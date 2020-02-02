# https://atcoder.jp/contests/abc110/submissions/9511209
read n m x y
cat > /tmp/tmp
X=$( ( echo -n "$x "; head -1 /tmp/tmp ) | tr ' ' \\n | sort -n | tail -1 )
Y=$( ( echo -n "$y "; tail -1 /tmp/tmp ) | tr ' ' \\n | sort -n | head -1 )
(( $X < $Y )) && echo No War || echo War
