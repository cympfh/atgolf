# https://atcoder.jp/contests/abc122/submissions/4717607
(echo;
grep -oE '[ACGT]+') | awk '{print length($1)}' | sort -n | tail -1
