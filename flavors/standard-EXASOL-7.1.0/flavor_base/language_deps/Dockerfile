FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN /scripts/install_scripts/install_python3.6_pip.sh

ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.6
ENV JAVA_PREFIX /usr/lib/jvm/java-11-openjdk-amd64

