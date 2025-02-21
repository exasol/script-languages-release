FROM {{ language_deps }}

RUN mkdir -p /build_info/packages
COPY flavor_base_deps/packages /build_info/packages/flavor_base_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps/apt_get_packages --with-versions

RUN curl -s https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - &&\
   /scripts/install_scripts/install_ppa.pl --ppa 'deb https://aquasecurity.github.io/trivy-repo/deb jammy main' --out-file trivy.list
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/flavor_base_deps/apt_get_packages_trivy

RUN /scripts/install_scripts/install_via_r_remotes.pl --file /build_info/packages/flavor_base_deps/cran_packages --rscript-binary Rscript --with-versions