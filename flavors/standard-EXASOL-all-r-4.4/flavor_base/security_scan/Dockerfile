FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

ENV SECURITY_SCANNERS="trivy oyster"
COPY /security_scan/.trivyignore /.trivyignore
COPY /security_scan/trivy-secret.yaml /trivy-secret.yaml

COPY /security_scan/.oysterignore /.oysterignore
COPY /security_scan/trivy.rego /trivy.rego

ENTRYPOINT ["/scripts/security_scan/run.sh"]
