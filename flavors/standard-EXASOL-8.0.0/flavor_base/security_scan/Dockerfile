FROM {{release}}
ENV DEBIAN_FRONTEND=noninteractive

ENV SECURITY_SCANNERS="trivy oyster"

ENTRYPOINT ["/scripts/security_scan/run.sh"]
