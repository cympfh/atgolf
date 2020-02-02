# https://atcoder.jp/contests/cpsco2019-s1/submissions/5300463
grep -o .|sort|uniq -c|sort -uk1,1|awk 'END{print NR<2?"Yes":"No"}'
