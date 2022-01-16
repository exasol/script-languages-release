FROM {{ language_deps }}

RUN mkdir -p /build_info/packages
COPY flavor_base_deps_apt/packages /build_info/packages/flavor_base_deps_apt

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps_apt/apt_get_packages --with-versions
