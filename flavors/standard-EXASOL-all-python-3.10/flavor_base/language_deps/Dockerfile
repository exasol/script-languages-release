FROM {{udfclient_deps}}


COPY language_deps_packages.yml /build_info/packages/language_deps_packages.yml
RUN exaslpm install --package-file /build_info/packages/language_deps_packages.yml --build-step language_deps

RUN /usr/bin/python3.10 -m pip uninstall -y pip

