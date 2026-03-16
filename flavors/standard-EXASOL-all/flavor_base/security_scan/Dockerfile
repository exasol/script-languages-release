FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

#No invocation of exaslpm needed because trivy was already installed in the release image

ENV SECURITY_SCANNERS="trivy"
COPY /security_scan/.trivyignore /.trivyignore
COPY /security_scan/trivy-secret.yaml /trivy-secret.yaml

COPY /security_scan/.oysterignore /.oysterignore
COPY /security_scan/trivy.rego /trivy.rego
COPY /security_scan/trivy.yaml /trivy.yaml

ENTRYPOINT ["/scripts/security_scan/run.sh"]
