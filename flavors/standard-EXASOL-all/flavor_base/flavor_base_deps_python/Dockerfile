FROM {{ flavor_base_deps_apt }}

RUN mkdir -p /build_info/packages
COPY flavor_base_deps_python/packages /build_info/packages/flavor_base_deps_python

RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/flavor_base_deps_python/python3_pip_packages --python-binary python3 --with-versions --allow-no-version-for-urls --ancestor-pip-package-root-path /build_info/packages
