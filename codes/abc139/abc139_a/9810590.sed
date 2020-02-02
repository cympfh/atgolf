# https://atcoder.jp/contests/abc139/submissions/9810590
N
:loop
s/^\(.\)\(.*\)\n\1/\2@\n/
tloop
/^@/bd
s/^.\(.*\)\n./\1\n/
tloop
:d
s/\n//
s/.*/echo -n &|wc -c/e
