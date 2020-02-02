# https://atcoder.jp/contests/abc132/submissions/6159341
if [ $( grep -o . | sort | uniq -c | awk '{print $1}' | tr -d '\n' ) == 22 ]
then
echo Yes
else
echo No
fi
