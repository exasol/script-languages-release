#!/bin/bash

set -euo pipefail

set -x

#(

FILE_PATH="$1"

ls -l $HOME/.ssh

echo "FILE_PATH X${FILE_PATH}X"

echo "TEST_PEM" > $FILE_PATH
#echo "$SSH_KEY_PEM" > $FILE_PATH

#) &> /dev/null
