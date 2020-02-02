#!/bin/bash

get() {
    sleep 1
    curl -sL $@
}

info() {
    datetime=$(LANG=C date "+%Y-%m-%d %H:%M:%S")
    echo "[$datetime] $@" >&2
}

TMPDIR=/tmp/atgolf-crawl
mkdir -p $TMPDIR

get-contests() {
    for page in $(seq 1 100); do
        get "https://atcoder.jp/contests/archive?lang=ja&page=$page" |
            grep '	<a href="/contests/' |
            grep -o '/contests/[^"]*' | sed 's#/contests/##g' > $TMPDIR/contests
        if [ -s $TMPDIR/contests ]; then
            cat $TMPDIR/contests
            continue
        else
            break
        fi
    done
}

get-tasks() {
    CONTEST_ID=$1
    get https://atcoder.jp/contests/$CONTEST_ID/tasks |
        grep "<td><a href=\"/contests/$CONTEST_ID/tasks/" |
        grep -o 'tasks/[^"]*' | sed 's#tasks/##g'
}

get-shortest-submission() {
    CONTEST_ID=$1
    TASK_ID=$2
    LANGUAGE_ID=$3
    get "https://atcoder.jp/contests/$CONTEST_ID/submissions?f.Task=$TASK_ID&f.Language=$LANGUAGE_ID&f.Status=AC&f.User=$USER" |
        grep -o 'data-id="[0-9]*' |
        head -1 |
        sed 's/data-id="//g'
}

get-code() {
    CONTEST_ID=$1
    SUBMISSION_ID=$2
    get https://atcoder.jp/contests/$CONTEST_ID/submissions/$SUBMISSION_ID |
        grep -A 10000 '<pre id="submission-code"' |
        awk 'BEGIN{v=1};v;/<\/pre>/{v=0}' |
        sed '1s/[ \t]*<pre [^>]*>//' |
        sed '$s#</pre>##' |
        sed '1{/^$/d}' |
        sed '${/^$/d}' |
        html-encode -d
}

extension() {
    case "$1" in
        3001 )
            echo .sh
            ;;
        3505 )
            echo .sed
            ;;
        3506 )
            echo .awk
            ;;
        * )
            ;;
    esac
}

for contest_id in $(get-contests); do

    info "Contest: $contest_id"
    mkdir -p "codes/$contest_id/"
    echo "https://atcoder.jp/contests/$contest_id" > "codes/$contest_id/CONTEST"

    for task_id in $(get-tasks "$contest_id"); do

        info "+ Task: $task_id"

        for lang in 3001 3505 3506; do
            for submission in $(get-shortest-submission "$contest_id" "$task_id" "$lang"); do
                info "+ The shortest code (LANG=$lang) is $submission"
                mkdir -p "codes/$contest_id/$task_id/"
                CODE_FILE="codes/$contest_id/$task_id/$submission$(extension $lang)"
                if [ -f $CODE_FILE ]; then
                    info "Already fetched. Skip"
                else
                    info "Fetching"
                    echo "# https://atcoder.jp/contests/$contest_id/submissions/$submission" > $CODE_FILE
                    get-code "$contest_id" "$submission" >> $CODE_FILE
                fi
            done
        done
    done
done
