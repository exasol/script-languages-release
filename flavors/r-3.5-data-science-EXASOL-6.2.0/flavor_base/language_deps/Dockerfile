FROM {{udfclient_deps}}

RUN mkdir -p /build_info/packages
COPY language_deps/packages /build_info/packages/language_deps
COPY scripts /scripts

RUN /scripts/install_scripts/install_key.pl --key-server hkp://keyserver.ubuntu.com:80 --key E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN /scripts/install_scripts/install_ppa.pl --ppa 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' --out-file 'bionic-cran35'
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages
