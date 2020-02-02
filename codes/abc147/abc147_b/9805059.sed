# https://atcoder.jp/contests/abc147/submissions/9805059
:;s/^\(.\)\(.*\)\1$/\2/;/^.\?$/bd;t;H;s/^.//;s/.$//;b;:d;g;s/\n/@/g;s/[a-z]//g;s/.*/echo -n &|wc -c/e
