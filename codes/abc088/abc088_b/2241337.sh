# https://atcoder.jp/contests/abc088/submissions/2241337
#!/bin/bash

tail -1 | tr ' ' '\n' | sort -n | awk '
{ a=$1-a }
END {print a<0?-a:a}'
