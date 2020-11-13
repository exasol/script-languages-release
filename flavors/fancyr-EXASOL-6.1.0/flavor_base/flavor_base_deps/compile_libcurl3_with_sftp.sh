#!/bin/bash 

set -e
set -u
set -o pipefail


pushd /tmp
mkdir compile_curl
pushd compile_curl

apt-get -y --no-install-recommends install wget build-essential debhelper libssh2-1-dev libssh-dev
apt-get source curl
apt-get build-dep -y --no-install-recommends curl

pushd curl-*

mv /tmp/ubuntu_libssl.patch ubuntu_libssl.patch
patch debian/rules < ubuntu_libssl.patch

DEB_BUILD_OPTIONS=nocheck dpkg-buildpackage -uc -us -b
# -us Do not sign the source package.
# -uc Do not sign the .changes file.

popd

ls -l *.deb

dpkg -i curl_*.deb
dpkg -i libcurl3-gnutls_*.deb
dpkg -i libcurl3-nss_*.deb
dpkg -i libcurl4_*.deb

popd

rm -rf compile_curl

apt-mark hold curl
apt-mark hold libcurl3
apt-mark hold libcurl3-gnutls
apt-mark hold libcurl3-nss
apt-mark hold libcurl4


apt-get -f install

curl --version
