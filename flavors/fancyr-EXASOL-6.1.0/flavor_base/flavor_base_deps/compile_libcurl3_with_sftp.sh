sudo apt-get -y --no-install-recommends install wget build-essential debhelper libssh-dev
sudo apt-get source curl
sudo apt-get build-dep curl

cd curl-*

wget https://launchpadlibrarian.net/409184445/ubuntu_libssl.patch
patch < ubuntu_libssl.patch

sudo dpkg-buildpackage -uc -us
# -us Do not sign the source package.
# -uc Do not sign the .changes file.

cd ..

sudo dpkg -i curl_*.deb
sudo dpkg -i libcurl3-*.deb
sudo dpkg -i libcurl3-gnutls_*.deb

sudo apt-mark hold curl
sudo apt-mark hold libcurl3
sudo apt-mark hold libcurl3-gnutls
