FROM {{ language_deps }}

RUN mkdir -p /build_info/packages
COPY flavor_base_deps_apt/packages /build_info/packages/flavor_base_deps_apt

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps_apt/apt_get_packages --with-versions

RUN curl -s https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - &&\
   /scripts/install_scripts/install_ppa.pl --ppa 'deb https://aquasecurity.github.io/trivy-repo/deb bionic main' --out-file trivy.list
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/security_scan/apt_get_packages_trivy

