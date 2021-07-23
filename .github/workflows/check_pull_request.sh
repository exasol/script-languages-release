#!/bin/bash

SOURCE_BRANCH_NAME="$1"
TARGET_BRANCH_NAME="$2"


if [[ "$SOURCE_BRANCH" == develop ]]; then
  if [[ ! "$TARGET_BRANCH" == master ]]; then
    echo "Develop branch must integrate into master only."
    exit 1
  else
    echo "Develop branch integrating to master. That's ok."
    exit 0
  fi
el
  if [[ ! "$TARGET_BRANCH" == develop ]]; then
      echo "Feature branches must integrate into develop only."
    exit 1
  fi
fi
