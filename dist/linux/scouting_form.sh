#!/bin/sh

pwd=$(dirname "$0")
cd "$pwd"

if [[ ! -e form/app.py ]]; then
    echo "fatal: form/app.py not found"
    exit 1
fi

exec python form/app.py
