#!/usr/bin/env bash

LANGUAGE=$1
URL="https://learnxinyminutes.com/docs/"
FULL_URL="$URL$LANGUAGE/"

FILE_URL=$(curl -s $FULL_URL | grep -Po '(?<=href="/docs/)[^"]*')

if [[ $FILE_URL ]]
then
    curl -s $URL$FILE_URL | less
else
    echo "No data found for $LANGUAGE"
fi
