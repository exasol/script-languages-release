FROM {{ language_deps }}

RUN mkdir -p /build_info/packages/flavor_base_deps

COPY flavor_base_deps/packages/apt_get_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps/apt_get_packages --with-versions

COPY flavor_base_deps/packages/cran_packages /build_info/packages/flavor_base_deps
RUN /scripts/install_scripts/install_via_r_remotes.pl --file /build_info/packages/flavor_base_deps/cran_packages --rscript-binary Rscript --with-versions
