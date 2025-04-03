FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

ENV ARCHIVE_UBUNTU_PREFIX=""
RUN sed --in-place --regexp-extended "s/(\/\/)(archive\.ubuntu)/\1$ARCHIVE_UBUNTU_PREFIX\2/" /etc/apt/sources.list

COPY 01_nodoc /etc/dpkg/dpkg.cfg.d/01_nodoc
COPY scripts /scripts

RUN mkdir -p /build_info/packages
COPY build_deps/packages /build_info/packages/build_deps

ENV BAZEL_PACKAGE_VERSION="7.6.1"
ENV BAZEL_PACKAGE_FILE="bazel-$BAZEL_PACKAGE_VERSION-linux-arm64"
ENV BAZEL_PACKAGE_URL="https://github.com/bazelbuild/bazel/releases/download/$BAZEL_PACKAGE_VERSION/$BAZEL_PACKAGE_FILE"

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/build_deps/apt_get_packages --with-versions
RUN curl -L --output "/usr/local/bin/bazel" "$BAZEL_PACKAGE_URL" && chmod +x /usr/local/bin/bazel

RUN apt-get -y update && \
    apt-get install -y libleveldb-dev && \
    apt-get -y clean && \
    apt-get -y autoremove
	  
RUN curl -L -o swig-2.0.4.tar.gz https://exasol-script-languages-dependencies.s3.eu-central-1.amazonaws.com/swig-2.0.4.tar.gz && \
    tar zxf swig-2.0.4.tar.gz && \
    (cd swig-2.0.4 && ./configure --build=aarch64-unknown-linux-gnu --prefix=/usr && make && make install) && \
    rm -rf swig-2.0.4 swig-2.0.4.tar.gz

RUN locale-gen en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 && \
    ldconfig

RUN touch /env && \
    echo "export PROTOBUF_BIN=/usr/bin/protoc" >> /env && \
    echo "export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-arm64" >> /env
