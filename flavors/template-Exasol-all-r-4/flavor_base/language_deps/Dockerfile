FROM {{udfclient_deps}}


COPY language_deps_packages.yml /build_info/packages/language_deps_packages.yml
RUN exaslpm install --package-file /build_info/packages/language_deps_packages.yml --build-step language_deps
RUN /scripts/install_scripts/install_key.pl --key-server hkp://keyserver.ubuntu.com:80 --key E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    /scripts/install_scripts/install_ppa.pl --ppa 'deb https://cloud.r-project.org/bin/linux/ubuntu jammy-cran40/' --out-file 'jammy-cran40'
