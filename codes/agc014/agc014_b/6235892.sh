# https://atcoder.jp/contests/agc014/submissions/6235892
sed 1d|tr ' ' '\n'|sort|uniq -c|awk '$1%2>0{a=1}END{print a==1?"NO":"YES"}'
