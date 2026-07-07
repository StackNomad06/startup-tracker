#!/bin/bash

REPO="$HOME/startup-tracker"

cd "$REPO" || exit 1

while ! ping -c 1 github.com >/dev/null 2>&1
do
    sleep 5
done

echo "$(date '+%Y-%m-%d %H:%M:%S') | System Started" >> startup_log.txt

git add startup_log.txt

git commit -m "Startup commit $(date '+%Y-%m-%d %H:%M:%S')"

git push origin master
