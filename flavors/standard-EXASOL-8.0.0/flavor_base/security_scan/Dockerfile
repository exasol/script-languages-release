FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

ENV SECURITY_SCANNERS="trivy oyster"
COPY /security_scan/.trivyignore /.trivyignore

ENTRYPOINT ["/scripts/security_scan/run.sh"]
