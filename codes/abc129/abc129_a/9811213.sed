# https://atcoder.jp/contests/abc129/submissions/9811213
s/\(.*\) \(.*\) \(.*\)/ (echo \1;echo \2;echo \3)|sort -n|head -2/e
s/\n/+/
s/.*/echo $((&))/e
