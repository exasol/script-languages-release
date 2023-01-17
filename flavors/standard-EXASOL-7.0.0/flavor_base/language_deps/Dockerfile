FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN /scripts/install_scripts/install_python2.7_pip.sh
RUN /scripts/install_scripts/install_python3.7_pip.sh

COPY language_deps/packages/python3_pip_packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/language_deps/python3_pip_packages --with-versions --allow-no-version-for-urls --python-binary python3.7


ENV PYTHON2_PREFIX /usr
ENV PYTHON2_VERSION python2.7
ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.7
ENV JAVA_PREFIX /usr/lib/jvm/java-11-openjdk-amd64

