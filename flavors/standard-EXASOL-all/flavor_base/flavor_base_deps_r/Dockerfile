FROM {{ flavor_base_deps_apt }}

RUN mkdir -p /build_info/packages

COPY flavor_base_deps_r_packages.yml /build_info/packages/flavor_base_deps_r_packages.yml
RUN exaslpm install --package-file /build_info/packages/flavor_base_deps_r_packages.yml --build-step flavor_base_deps_r
