#!/bin/bash

set -euo pipefail

#(

FILE_PATH="$1"

echo "$SSH_KEY_PEM" > "$FILE_PATH"

#) &> /dev/null
