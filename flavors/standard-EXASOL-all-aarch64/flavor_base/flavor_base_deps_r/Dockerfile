FROM {{ flavor_base_deps_apt }}

RUN mkdir -p /build_info/packages
COPY flavor_base_deps_r/packages /build_info/packages/flavor_base_deps_r

RUN /scripts/install_scripts/install_via_r_remotes.pl --file /build_info/packages/flavor_base_deps_r/cran_packages --rscript-binary Rscript --with-versions
