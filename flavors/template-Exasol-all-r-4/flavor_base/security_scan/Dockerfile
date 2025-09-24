FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /build_info/packages
COPY security_scan/packages /build_info/packages/security_scan
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/security_scan/apt_get_packages_trivy_deps
RUN curl -s https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - &&\
   /scripts/install_scripts/install_ppa.pl --ppa 'deb https://aquasecurity.github.io/trivy-repo/deb jammy main' --out-file trivy.list
RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/security_scan/apt_get_packages

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/security_scan/apt_get_packages_oyster_deps
RUN /scripts/install_scripts/install_via_r_remotes.pl --file /build_info/packages/security_scan/r_cran_packages --rscript-binary Rscript


ENV SECURITY_SCANNERS="trivy"
COPY /security_scan/.trivyignore /.trivyignore
COPY /security_scan/trivy-secret.yaml /trivy-secret.yaml

COPY /security_scan/.oysterignore /.oysterignore
COPY /security_scan/trivy.rego /trivy.rego
COPY /security_scan/trivy.yaml /trivy.yaml

ENTRYPOINT ["/scripts/security_scan/run.sh"]
