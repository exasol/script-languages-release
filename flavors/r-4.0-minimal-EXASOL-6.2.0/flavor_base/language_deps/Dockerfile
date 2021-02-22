FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps

RUN apt-get update && \
    gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | apt-key add -  && \
    add-apt-repository -y 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions
