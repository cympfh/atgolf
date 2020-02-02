# https://atcoder.jp/contests/abc120/submissions/4494157
s,\(.*\) \(.*\) \(.*\),echo $((\2/\1)) \3,e
s,\(.*\) \(.*\),[ \1 -gt \2 ] \&\& echo \2 || echo \1,e
