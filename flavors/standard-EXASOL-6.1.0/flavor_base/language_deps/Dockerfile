FROM {{udfclient_deps}}

RUN mkdir -p /build_info/packages
COPY language_deps/packages /build_info/packages/language_deps
COPY scripts /scripts

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends $(cat /build_info/packages/language_deps/apt_get_packages) && \
    locale-gen en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    ldconfig

ENV PYTHON2_PREFIX /usr
ENV PYTHON2_VERSION python2.7
ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.6
ENV JAVA_PREFIX /usr/lib/jvm/java-11-openjdk-amd64

