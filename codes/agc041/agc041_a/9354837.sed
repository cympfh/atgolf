# https://atcoder.jp/contests/agc041/submissions/9354837
s#\(.*\) \(.*\) \(.*\)#ruby -e 'p (\3-\2)%2==0?(\3-\2)/2:[\1-\3,\2-1].min+1+(\3-\2-1)/2'#e
