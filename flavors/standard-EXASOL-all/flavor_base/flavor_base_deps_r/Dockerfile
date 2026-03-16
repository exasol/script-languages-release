FROM {{ flavor_base_deps_apt }}

RUN mkdir -p /build_info/packages
#Temporarily necessary as the R import tests needs this file
#See https://github.com/exasol/script-languages/blob/fe8396cd1b226293a4f10fc2a286432c1f1e75e2/test_container/tests/test/standard-flavor/all/r/import_r_modules.py#L19
COPY flavor_base_deps_r/packages /build_info/packages/flavor_base_deps_r
COPY flavor_base_deps_r_packages.yml /build_info/packages/flavor_base_deps_r_packages.yml
RUN exaslpm install --package-file /build_info/packages/flavor_base_deps_r_packages.yml --build-step flavor_base_deps_r
