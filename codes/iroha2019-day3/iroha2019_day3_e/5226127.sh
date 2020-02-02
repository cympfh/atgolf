# https://atcoder.jp/contests/iroha2019-day3/submissions/5226127
tail -n +2 | uniq -c | awk 'a==$1&&$2=="\\"{s+=1}{a=$1;b=$2}END{print s}'
