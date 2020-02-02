# https://atcoder.jp/contests/abc149/submissions/9804869
s/\(.*\) \(.*\) \(.*\)/echo $((\1 < \3 ? 0 : \1 - \3)) $((\1 < \3 ? (\1+\2<\3 ? 0 : \1+\2-\3) : \2))/e
