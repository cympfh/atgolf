# https://atcoder.jp/contests/abc137/submissions/9810764
s/\(.*\) \(.*\)/( echo $((\1+\2)); echo $((\1-\2)); echo $((\1*\2)) ) |sort -n|tail -1/e
