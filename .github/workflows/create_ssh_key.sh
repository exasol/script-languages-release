#!/bin/bash

set -euo pipefail

set -x

(

echo "$SSH_KEY_PEM" > $FILE_PATH

) &> /dev/null
