#!/bin/sh

if [ -z "$1" ]; then
    echo "Specify nginx.conf path to the arguments" >&2
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "$1: No such file or directory" >&2
    exit 1
fi

path="$1"
conf="$(basename "$path")"

cp "$path" .

printf "Checking $conf syntax...\n\n"

printf "\033[31m"
docker build -t nginx-tester --build-arg CONF="$conf" . >/dev/null

rm -f "$conf"

res="$(docker run nginx-tester 2>&1)"
if echo "$res" | grep -q "ok"; then
    printf "\033[32m"
fi
echo "$res"
