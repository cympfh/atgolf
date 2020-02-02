# https://atcoder.jp/contests/abc118/submissions/4494630
s/\(.*\) \(.*\)/if [ $(( \2 % \1 )) -eq 0 ];then echo $((\1+\2));else echo $((\2-\1)); fi/e
