#!/bin/bash

BRANCH_NAME=${GITHUB_REF#refs/heads/}
if [[ ! "$BRANCH_NAME" == rebuild/* ]]
then
  echo "Branch '$BRANCH_NAME' doesn't start with rebuilt/. This branch didn't triggered a rebuild. Branches which didn't trigger a rebuild are not allowed to be merged, because some apt-packages might be outdated and no longer available which cause build failures for the master."
  exit 1
else
  echo "Branch '$BRANCH_NAME' does start with rebuilt/, This branch triggered a rebuild and is allowed to be merged after the successfull rebuild. Branches which didn't trigger a rebuild are not allowed to be merged, because some apt-packages might be outdated and no longer available which cause build failures for the master."
  exit 0
fi
