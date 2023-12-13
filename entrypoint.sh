#!/bin/sh -l

echo "Hello $1"

echo "url: $ACTION_ID_TOKEN_REQUEST_URL"
echo "token: $ACTION_ID_TOKEN_REQUEST_TOKEN"

payload=$(curl -H "Authorization: bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN" "$ACTIONS_ID_TOKEN_REQUEST_URL&audience=hookd")

echo "payload=$payload"

echo "payload=$payload" >> $GITHUB_OUTPUT

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
