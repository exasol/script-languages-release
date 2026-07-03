# Public packages comparison between flavor "Template Exasol All Python 3.10 Conda" in 11.2.0 and flavor "Template Exasol All Python 3.10 Conda" in 11.2.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.2.0    | Version in 11.2.0    | Status   | Build-Step       |
|---:|:----------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | bzip2           | 1.0.8-5build1        | 1.0.8-5build1        |          | conda_deps       |
|  1 | ca-certificates | 20260601~22.04.1     | 20260601~22.04.1     |          | conda_deps       |
|  2 | coreutils       | 8.32-4.1ubuntu*      | 8.32-4.1ubuntu*      |          | conda_deps       |
|  3 | curl            | 7.81.0-1ubuntu*      | 7.81.0-1ubuntu*      |          | conda_deps       |
|  4 | libxml2         | 2.9.13+dfsg-1ubuntu* | 2.9.13+dfsg-1ubuntu* |          | conda_deps       |
|  5 | locales         | 2.35-0ubuntu*        | 2.35-0ubuntu*        |          | conda_deps       |
|  6 | tzdata          | 2026a-0ubuntu*       | 2026a-0ubuntu*       |          | flavor_base_deps |

## Conda packages

|    | Package     | Version in 11.2.0   | Version in 11.2.0   | Status   | Build-Step     |
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