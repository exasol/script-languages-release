# 13.2.0 - 2026-11-20

## Summary

- #1565: Drop Python 3.10 project support and update workflow tooling to Python 3.11 with Python Toolbox v12.

## Security Issues

This release fixes vulnerabilities by updating dependencies:

| Dependency | Vulnerability | Affected | Fixed in |
|------------|---------------|----------|----------|
| certifi | PYSEC-2026-4320 | 2026.7.22 | 2026.10.18 |
| filelock | CVE-2026-112907 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112908 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112909 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112910 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112911 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112912 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112913 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112915 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112934 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112935 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112938 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112939 | 4.0.12 | 4.2.1 |
| filelock | CVE-2026-112940 | 4.0.12 | 4.2.1 |
| gitpython | CVE-2026-114145 | 3.2.0 | 3.2.1 |
| setuptools | GHSA-xmj3-9gf7-h52w | 84.0.0 | 84.1.0 |
| tornado | CVE-2026-115927 | 6.5.10 | 6.6 |
| tornado | CVE-2026-116577 | 6.5.10 | 6.6 |
| tornado | CVE-2026-116578 | 6.5.10 | 6.6 |
| tornado | CVE-2026-126347 | 6.5.10 | 6.6.1 |
| virtualenv | PYSEC-2026-4372 | 21.14.5 | 21.14.10 |
| virtualenv | PYSEC-2026-4373 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4374 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4375 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4376 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4377 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4378 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4379 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4380 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4381 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4382 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4383 | 21.14.5 | 21.14.9 |
| virtualenv | PYSEC-2026-4384 | 21.14.5 | 21.14.7 |

## Dependency Updates

### `main`

* Updated dependency `click:8.5.0` to `8.5.1`
* Updated dependency `exasol-script-languages-container-ci:5.3.0` to `5.4.0`
* Updated dependency `exasol-script-languages-container-ci-setup:4.4.1` to `4.5.0`
* Updated dependency `exasol-script-languages-container-tool:4.4.0` to `4.5.0`

### `dev`

* Added dependency `exasol-toolbox:12.0.0`
* Updated dependency `gitpython:3.2.0` to `3.2.1`
* Updated dependency `nox:2026.8.17` to `2026.10.20`
