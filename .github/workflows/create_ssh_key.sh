#!/bin/bash

set -euo pipefail

#(

FILE_PATH="$1"

ls -l ~/.ssh

echo "FILE_PATH X${FILE_PATH}X"

echo "$SSH_KEY_PEM" > "$FILE_PATH"

#) &> /dev/null
