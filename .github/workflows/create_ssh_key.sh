#!/bin/bash

set -euo pipefail

#(

FILE_PATH="$1"

ls -l ~/.ssh

echo "FILE_PATH $FILE_PATH"

echo "$SSH_KEY_PEM" > "$FILE_PATH"

#) &> /dev/null
