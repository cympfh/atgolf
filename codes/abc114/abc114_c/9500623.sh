# https://atcoder.jp/contests/abc114/submissions/9500623
awk 'function a(x){return int(x)>$1?0:(x~7&&x~5&&x~3)+a(3x)+a(5x)+a(7x)}1,$0=a()'
