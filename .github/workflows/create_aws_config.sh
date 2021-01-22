#!/bin/bash

set -euo pipefail

FILE_PREFIX="$1"

RESPONSE=$($AWS_GET_ROLE)
AWS_ACCESS_KEY_ID=$(echo "$RESPONSE" | jq -r .AWSAccessKeyID)
AWS_SECRET_ACCESS_KEY=$(echo "$RESPONSE" | jq -r .AWSSecretAccessKey)
AWS_SESSION_TOKEN=$(echo "$RESPONSE" | jq -r .AWSSessionToken)
AWS_DEFAULT_REGION=$(echo "$RESPONSE" | jq -r .AWSDefaultRegion)

CREDENTIALS_FILE="$FILE_PREFIX/credentials"

echo '[default]' > "$CREDENTIALS_FILE"
echo "aws_secret_access_key = $AWS_SECRET_ACCESS_KEY" >> "$CREDENTIALS_FILE"
echo "aws_session_token = $AWS_SESSION_TOKEN" >> "$CREDENTIALS_FILE"
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> "$CREDENTIALS_FILE"
echo '[default-mfa]' >> "$CREDENTIALS_FILE"
echo "aws_secret_access_key = $AWS_SECRET_ACCESS_KEY" >> "$CREDENTIALS_FILE"
echo "aws_session_token = $AWS_SESSION_TOKEN" >> "$CREDENTIALS_FILE"
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> "$CREDENTIALS_FILE"


CONFIG_FILE="$FILE_PREFIX/config"

echo '[default]' > "$CONFIG_FILE"
echo "region = $AWS_DEFAULT_REGION" >>  "$CONFIG_FILE"
echo '[profile default-mfa]' >> "$CONFIG_FILE"
echo "region = $AWS_DEFAULT_REGION" >>  "$CONFIG_FILE"

