FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN /scripts/install_scripts/install_python3.10_pip.sh "pip == 24.0"

COPY language_deps/packages/python3_pip_packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/language_deps/python3_pip_packages --python-binary python3 --with-versions --ancestor-pip-package-root-path /build_info/packages

ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.10
ENV JAVA_PREFIX /usr/lib/jvm/java-11-openjdk-amd64

