# https://atcoder.jp/contests/abc049/submissions/2241404
#!/bin/bash

if [ -z "$(sed 's/eraser//g; s/erase//g; s/dreamer//g; s/dream//g')" ]; then
    echo YES
else
    echo NO
fi
