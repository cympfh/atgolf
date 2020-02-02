# https://atcoder.jp/contests/abc133/submissions/9810981
s/\(.*\) \(.*\) \(.*\)/(echo $((\1*\2));echo \3)|sort -n|head -1/e
