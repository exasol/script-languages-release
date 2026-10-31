# Public packages comparison between flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 12.0.2 and flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 12.0.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 12.0.1    | Version in 12.0.2    | Status   | Build-Step       |
|---:|:----------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | bzip2           | 1.0.8-*              | 1.0.8-*              |          | conda_deps       |
|  1 | ca-certificates | *                    | *                    |          | conda_deps       |
|  2 | coreutils       | 8.32-4.1ubuntu*      | 8.32-4.1ubuntu*      |          | conda_deps       |
|  3 | curl            | 7.81.0-1ubuntu*      | 7.81.0-1ubuntu*      |          | conda_deps       |
|  4 | libxml2         | 2.9.13+dfsg-1ubuntu* | 2.9.13+dfsg-1ubuntu* |          | conda_deps       |
|  5 | locales         | 2.35-0ubuntu*        | 2.35-0ubuntu*        |          | conda_deps       |
|  6 | tzdata          | 2026*                | 2026*                |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 12.0.1   | Version in 12.0.2   | Status   | Build-Step     |
|---:|:-------------|:--------------------|:--------------------|:---------|:---------------|
|  0 | cuda-toolkit | =13.3.1             | =13.3.1             |          | language_deps  |
|  1 | libarrow     | =25.0.0=*_cuda      | =25.0.0=*_cuda      |          | language_deps  |
|  2 | mamba        | =2.8.1              | =2.8.1              |          | language_deps  |
|  3 | numpy        | =2.2.6              | =2.2.6              |          | language_deps  |
|  4 | pandas       | =2.3.3              | =2.3.3              |          | language_deps  |
|  5 | pyarrow      | =25.0.0             | =25.0.0             |          | language_deps  |
|  6 | python       | =3.10.20            | =3.10.20            |          | language_deps  |
|  7 | cppzmq       | =4.11.0             | =4.11.0             |          | udfclient_deps |
|  8 | libprotobuf  | =7.35.1             | =7.35.1             |          | udfclient_deps |
|  9 | nss          | =3.118              | =3.118              |          | udfclient_deps |
| 10 | zeromq       | =4.3.5              | =4.3.5              |          | udfclient_deps |