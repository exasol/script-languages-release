FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN /scripts/install_scripts/install_key.pl --key-server hkp://keyserver.ubuntu.com:80 --key E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    /scripts/install_scripts/install_ppa.pl --ppa 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' --out-file 'focal-cran40'
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages_r --with-versions

RUN /scripts/install_scripts/install_python3.8_pip.sh "pip == 21.3.1"

COPY language_deps/packages/python3_pip_packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/language_deps/python3_pip_packages --python-binary python3 --with-versions

ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.8
ENV JAVA_PREFIX /usr/lib/jvm/java-11-openjdk-amd64

