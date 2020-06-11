FROM {{ language_deps }}

RUN mkdir -p /build_info/packages/flavor_base_deps

COPY flavor_base_deps/packages/apt_get_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps/apt_get_packages --with-versions

RUN curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python3.6 get-pip.py && \
    python2.7 get-pip.py && \
    rm get-pip.py

COPY flavor_base_deps/packages/pip_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/flavor_base_deps/pip_packages --python-binary python

COPY flavor_base_deps/packages/pip3_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/flavor_base_deps/pip3_packages --python-binary python3

COPY flavor_base_deps/packages/cran_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_r_versions.pl --file /build_info/packages/flavor_base_deps/cran_packages --rscript-binary Rscript
