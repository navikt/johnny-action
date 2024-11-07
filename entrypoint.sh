#!/bin/sh -l

echo "Hello!"

env

cat $GITHUB_EVENT_PATH
