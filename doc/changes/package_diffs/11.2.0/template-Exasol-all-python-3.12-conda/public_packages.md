# Public packages comparison between flavor "Template Exasol All Python 3.12 Conda" in 11.2.0 and flavor "Template Exasol All Python 3.12 Conda" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.1.1        | Version in 11.2.0      | Status   | Build-Step       |
|---:|:----------------|:-------------------------|:-----------------------|:---------|:-----------------|
|  0 | adduser         | 3.137ubuntu1             | 3.137ubuntu*           | UPDATED  | conda_deps       |
|  1 | coreutils       | 9.4-3ubuntu6.1           | 9.4-3ubuntu*           | UPDATED  | conda_deps       |
|  2 | curl            | 8.5.0-2ubuntu10.8        | 8.5.0-2ubuntu*         | UPDATED  | conda_deps       |
|  3 | libxml2         | 2.9.14+dfsg-1.3ubuntu3.7 | 2.9.14+dfsg-1.3ubuntu* | UPDATED  | conda_deps       |
|  4 | locales         | 2.39-0ubuntu8.7          | 2.39-0ubuntu*          | UPDATED  | conda_deps       |
|  5 | tzdata          | 2025b-0ubuntu0.24.04.1   | 2025b-0ubuntu*         | UPDATED  | flavor_base_deps |
|  6 | bzip2           | 1.0.8-5.1build0.1        | 1.0.8-5.1build0.1      |          | conda_deps       |
|  7 | ca-certificates | 20240203                 | 20240203               |          | conda_deps       |

## Conda packages

|    | Package     | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step     |
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