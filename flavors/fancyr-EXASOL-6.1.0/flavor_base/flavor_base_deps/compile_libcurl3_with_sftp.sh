#!/bin/bash 

set -e
set -u
set -o pipefail

apt-get -y --no-install-recommends install wget build-essential debhelper libssh-dev
apt-get source curl
apt-get build-dep -y --no-install-recommends curl

cd curl-*

cat debian/rules

wget https://launchpadlibrarian.net/409184445/ubuntu_libssl.patch
patch debian/rules < ubuntu_libssl.patch

dpkg-buildpackage -uc -us -b
# -us Do not sign the source package.
# -uc Do not sign the .changes file.

cd ..

dpkg -i curl_*.deb
dpkg -i libcurl3-*.deb
dpkg -i libcurl3-gnutls_*.deb

apt-mark hold curl
apt-mark hold libcurl3
apt-mark hold libcurl3-gnutls

curl --v 2>&1 | grep sftp
