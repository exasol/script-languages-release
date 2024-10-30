#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [ $# -lt 6 ]; then
    me=$(basename "$0")
    echo "Usage: $me BucketFSHost BucketFSPort BucketFSWritePassword BucketFSName BucketName HTTP/HTTPS <PathInBucket>"
    exit 1
fi

#TMPDIR=`mktemp -d`
TMPDIR="/tmp"
#trap 'rm -rf "$TMPDIR"' EXIT
pushd $TMPDIR &>/dev/null
#curl -s -LO "https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz"
#curl -s -LO "https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz.sha512sum"
sed -i 's/standard-EXASOL-7.1.0-release-VYP23K363DK7WSX66BHZKSO5JFUOIZJMEGFY3LOJ7LTR6KH7VSUA\.tar\.gz/standard-EXASOL-7.1.0_release\.tar\.gz/g' standard-EXASOL-7.1.0_release.tar.gz.sha512sum
sha512sum --quiet --strict -c standard-EXASOL-7.1.0_release.tar.gz.sha512sum || (echo Checksum of download container does not match. && exit 1)

local_container_file="$TMPDIR/standard-EXASOL-7.1.0_release.tar.gz"
bucketfs_host=$1
bucketfs_port=$2
write_password=$3
bucketfs_name=$4
bucket_name=$5
protocol=$6 # HTTP or HTTPS

path_in_bucket=""

if [ $# -gt 6 ]; then
  path_in_bucket=$7
fi

container_file_in_bucket="standard-EXASOL-7.1.0_release.tar.gz"


curl -vkX PUT -T "$local_container_file" "$protocol://w:$write_password@$bucketfs_host:$bucketfs_port/$bucket_name/$path_in_bucket$container_file_in_bucket"


#popd &>/dev/null
#rm -rf $TMPDIR