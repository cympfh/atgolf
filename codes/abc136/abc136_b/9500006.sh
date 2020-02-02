# https://atcoder.jp/contests/abc136/submissions/9500006
awk '{a=0
for(i=1;i<=$1;i++) if (length(i) %2==1)a++
print a}'
