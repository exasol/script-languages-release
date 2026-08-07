# Public packages comparison between flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 11.4.0 and flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 11.3.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.3.0    | Version in 11.4.0    | Status   | Build-Step       |
|---:|:----------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | bzip2           | 1.0.8-5build1        | 1.0.8-5build1        |          | conda_deps       |
|  1 | ca-certificates | 20260601~22.04.1     | 20260601~22.04.1     |          | conda_deps       |
|  2 | coreutils       | 8.32-4.1ubuntu*      | 8.32-4.1ubuntu*      |          | conda_deps       |
|  3 | curl            | 7.81.0-1ubuntu*      | 7.81.0-1ubuntu*      |          | conda_deps       |
|  4 | libxml2         | 2.9.13+dfsg-1ubuntu* | 2.9.13+dfsg-1ubuntu* |          | conda_deps       |
|  5 | locales         | 2.35-0ubuntu*        | 2.35-0ubuntu*        |          | conda_deps       |
|  6 | tzdata          | 2026*                | 2026*                |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 11.3.0   | Version in 11.4.0   | Status   | Build-Step     |
|---:|:-------------|:--------------------|:--------------------|:---------|:---------------|
|  0 | cuda-toolkit | =12.9.1             | =13.3.1             | UPDATED  | language_deps  |
|  1 | libarrow     | =22.0.0=*_cuda      | =25.0.0=*_cuda      | UPDATED  | language_deps  |
|  2 | mamba        | =2.3.3              | =2.8.1              | UPDATED  | language_deps  |
|  3 | numpy        | =1.26.2             | =2.2.6              | UPDATED  | language_deps  |
|  4 | pandas       | =2.3.1              | =2.3.3              | UPDATED  | language_deps  |
|  5 | pyarrow      | =22.0.0             | =25.0.0             | UPDATED  | language_deps  |
|  6 | python       | =3.10.4             | =3.10.20            | UPDATED  | language_deps  |
|  7 | cppzmq       | =4.10.0             | =4.11.0             | UPDATED  | udfclient_deps |
|  8 | libprotobuf  | =6.31.1             | =7.35.1             | UPDATED  | udfclient_deps |
|  9 | nss          | =3.100              | =3.118              | UPDATED  | udfclient_deps |
| 10 | zeromq       | =4.3.5              | =4.3.5              |          | udfclient_deps |