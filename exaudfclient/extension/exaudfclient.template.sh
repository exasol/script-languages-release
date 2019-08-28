#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
echo "Changing to script directory  $SCRIPT_DIR"
cd $SCRIPT_DIR
export LIBEXAUDFLIB_PATH="$SCRIPT_DIR/external/script_languages/libexaudflib_complete.so"
export LIBPYEXADATAFRAME_DIR="$SCRIPT_DIR/external/script_languages/python/python3"
