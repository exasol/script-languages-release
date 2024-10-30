#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

curl --help &>/dev/null || (echo This script requires `curl` command. && exit 1)

if [ $# -lt 5 ]; then
    me=$(basename "$0")
    echo "Usage: $me BucketFSHost BucketFSPort BucketFSWritePassword BucketName HTTP/HTTPS"
    exit 1
fi

TMPDIR=`mktemp -d`
trap 'rm -rf "$TMPDIR"' EXIT
pushd $TMPDIR &>/dev/null
curl -s -LO "https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz"
curl -s -LO "https://github.com/exasol/script-languages-release/releases/download/6.0.0/standard-EXASOL-7.1.0_release.tar.gz.sha512sum"
sed -i 's/standard-EXASOL-7.1.0-release-VYP23K363DK7WSX66BHZKSO5JFUOIZJMEGFY3LOJ7LTR6KH7VSUA\.tar\.gz/standard-EXASOL-7.1.0_release\.tar\.gz/g' standard-EXASOL-7.1.0_release.tar.gz.sha512sum
sha512sum --quiet --strict -c standard-EXASOL-7.1.0_release.tar.gz.sha512sum || (echo Checksum of download container does not match. && exit 1)

local_container_file="$TMPDIR/standard-EXASOL-7.1.0_release.tar.gz"
bucketfs_host=$1
bucketfs_port=$2
write_password=$3
bucket_name=$4
protocol=$5 # HTTP or HTTPS
path_in_bucket=""


container_file_in_bucket="standard-EXASOL-7.1.0_release.tar.gz"

curl --silent -vkX PUT -T "$local_container_file" "$protocol://w:$write_password@$bucketfs_host:$bucketfs_port/$bucket_name/$path_in_bucket$container_file_in_bucket"

echo Upload completed.
echo The file was uploaded to \""$protocol"://"$bucketfs_host":"$bucketfs_port"/"$bucket_name"/"$path_in_bucket""$container_file_in_bucket"\"

popd &>/dev/null
rm -rf $TMPDIR