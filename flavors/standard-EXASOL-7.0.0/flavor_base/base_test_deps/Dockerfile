FROM {{build_deps}}

COPY base_test_deps/packages /build_info/packages/base_test_deps
RUN /scripts/install_via_apt.pl --file /build_info/packages/base_test_deps/apt_get_packages
