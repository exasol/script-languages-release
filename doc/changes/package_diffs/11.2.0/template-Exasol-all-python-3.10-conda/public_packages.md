# Public packages comparison between flavor "Template Exasol All Python 3.10 Conda" in 11.2.0 and flavor "Template Exasol All Python 3.10 Conda" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.1.1       | Version in 11.2.0    | Status   | Build-Step       |
|---:|:----------------|:------------------------|:---------------------|:---------|:-----------------|
|  0 | coreutils       | 8.32-4.1ubuntu1.2       | 8.32-4.1ubuntu*      | UPDATED  | conda_deps       |
|  1 | curl            | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu*      | UPDATED  | conda_deps       |
|  2 | libxml2         | 2.9.13+dfsg-1ubuntu0.11 | 2.9.13+dfsg-1ubuntu* | UPDATED  | conda_deps       |
|  3 | locales         | 2.35-0ubuntu3.13        | 2.35-0ubuntu*        | UPDATED  | conda_deps       |
|  4 | tzdata          | 2025b-0ubuntu0.22.04.1  | 2025b-0ubuntu*       | UPDATED  | flavor_base_deps |
|  5 | bzip2           | 1.0.8-5build1           | 1.0.8-5build1        |          | conda_deps       |
|  6 | ca-certificates | 20240203~22.04.1        | 20240203~22.04.1     |          | conda_deps       |

## Conda packages

|    | Package     | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step     |
|---:|:------------|:--------------------|:--------------------|:---------|:---------------|
|  0 | mamba       | =2.3.3              | =2.3.3              |          | language_deps  |
|  1 | numpy       | =1.26.2             | =1.26.2             |          | language_deps  |
|  2 | pandas      | =2.2.3              | =2.2.3              |          | language_deps  |
|  3 | pyarrow     | =22.0.0             | =22.0.0             |          | language_deps  |
|  4 | python      | =3.10.4             | =3.10.4             |          | language_deps  |
|  5 | cppzmq      | =4.10.0             | =4.10.0             |          | udfclient_deps |
|  6 | libprotobuf | =6.31.1             | =6.31.1             |          | udfclient_deps |
|  7 | nss         | =3.100              | =3.100              |          | udfclient_deps |
|  8 | zeromq      | =4.3.5              | =4.3.5              |          | udfclient_deps |