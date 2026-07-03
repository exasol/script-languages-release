# Public packages comparison between flavor "Template Exasol All Python 3.12 Conda" in 11.3.0 and flavor "Template Exasol All Python 3.12 Conda" in 11.2.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.2.0      | Version in 11.3.0      | Status   | Build-Step       |
|---:|:----------------|:-----------------------|:-----------------------|:---------|:-----------------|
|  0 | adduser         | 3.137ubuntu*           | 3.137ubuntu*           |          | conda_deps       |
|  1 | bzip2           | 1.0.8-5.1build0.1      | 1.0.8-5.1build0.1      |          | conda_deps       |
|  2 | ca-certificates | 20260601~24.04.1       | 20260601~24.04.1       |          | conda_deps       |
|  3 | coreutils       | 9.4-3ubuntu*           | 9.4-3ubuntu*           |          | conda_deps       |
|  4 | curl            | 8.5.0-2ubuntu*         | 8.5.0-2ubuntu*         |          | conda_deps       |
|  5 | libxml2         | 2.9.14+dfsg-1.3ubuntu* | 2.9.14+dfsg-1.3ubuntu* |          | conda_deps       |
|  6 | locales         | 2.39-0ubuntu*          | 2.39-0ubuntu*          |          | conda_deps       |
|  7 | tzdata          | 2026a-0ubuntu*         | 2026a-0ubuntu*         |          | flavor_base_deps |

## Conda packages

|    | Package     | Version in 11.2.0   | Version in 11.3.0   | Status   | Build-Step     |
|---:|:------------|:--------------------|:--------------------|:---------|:---------------|
|  0 | mamba       | =2.3.3              | =2.3.3              |          | language_deps  |
|  1 | numpy       | =1.26.2             | =1.26.2             |          | language_deps  |
|  2 | pandas      | =2.3.3              | =2.3.3              |          | language_deps  |
|  3 | pyarrow     | =22.0.0             | =22.0.0             |          | language_deps  |
|  4 | python      | =3.12.11            | =3.12.11            |          | language_deps  |
|  5 | cppzmq      | =4.10.0             | =4.10.0             |          | udfclient_deps |
|  6 | libprotobuf | =6.31.1             | =6.31.1             |          | udfclient_deps |
|  7 | nss         | =3.116              | =3.116              |          | udfclient_deps |
|  8 | zeromq      | =4.3.5              | =4.3.5              |          | udfclient_deps |