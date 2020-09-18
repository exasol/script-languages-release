#!/bin/bash

BRANCH_NAME=${GITHUB_REF#refs/heads/}
if [[ ! "$BRANCH_NAME" == rebuild/* ]]
then
  echo "Branch '$BRANCH_NAME' does not have the prefix rebuilt/. This branch did not trigger a rebuild. Branches, which do not trigger a rebuild, are not allowed to be merged, because some apt-packages might be outdated and no longer available which causes build failures for the master."
  exit 1
else
  echo "Branch '$BRANCH_NAME' does start with rebuilt/, This branch triggered a rebuild and is allowed to be merged after the successfull rebuild. Branches, which do not trigger a rebuild, are not allowed to be merged, because some apt-packages might be outdated and no longer available which cause build failures for the master."
  exit 0
fi
