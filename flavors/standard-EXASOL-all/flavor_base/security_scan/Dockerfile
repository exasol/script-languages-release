FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

COPY security_scan_packages.yml /build_info/packages/security_scan_packages.yml
RUN exaslpm install --package-file /build_info/packages/security_scan_packages.yml --build-step security_scan

ENV SECURITY_SCANNERS="trivy"
COPY /security_scan/.trivyignore /.trivyignore
COPY /security_scan/trivy-secret.yaml /trivy-secret.yaml

COPY /security_scan/.oysterignore /.oysterignore
COPY /security_scan/trivy.rego /trivy.rego
COPY /security_scan/trivy.yaml /trivy.yaml

ENTRYPOINT ["/scripts/security_scan/run.sh"]
