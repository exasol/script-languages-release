FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /build_info/packages
COPY security_scan_packages.yaml /build_info/packages/security_scan_packages.yaml
RUN exaslpm install --package-file /build_info/packages/security_scan_packages.yaml --build-step security_scan
RUN curl -s https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - &&\
   /scripts/install_scripts/install_ppa.pl --ppa 'deb https://aquasecurity.github.io/trivy-repo/deb jammy main' --out-file trivy.list

ENV SECURITY_SCANNERS="trivy"
COPY /security_scan/.trivyignore /.trivyignore
COPY /security_scan/trivy-secret.yaml /trivy-secret.yaml

COPY /security_scan/.oysterignore /.oysterignore
COPY /security_scan/trivy.rego /trivy.rego
COPY /security_scan/trivy.yaml /trivy.yaml

ENTRYPOINT ["/scripts/security_scan/run.sh"]
