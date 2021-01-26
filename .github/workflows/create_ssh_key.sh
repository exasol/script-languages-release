#!/bin/bash

set -euo pipefail

set -x

FILE_PATH=$1

(

echo "$SSH_KEY_PEM" > "$FILE_PATH"
chmod 600 "$FILE_PATH"

) &> /dev/null
