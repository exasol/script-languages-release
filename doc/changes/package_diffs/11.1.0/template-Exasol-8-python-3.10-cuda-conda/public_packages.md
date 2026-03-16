# Public packages comparison between flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 11.1.0 and flavor "Template Exasol 8 Python 3.10 Cuda Conda" in 11.0.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.0.0       | Version in 11.1.0       | Status   | Build-Step       |
|---:|:----------------|:------------------------|:------------------------|:---------|:-----------------|
|  0 | bzip2           | 1.0.8-5build1           | 1.0.8-5build1           |          | conda_deps       |
|  1 | ca-certificates | 20240203~22.04.1        | 20240203~22.04.1        |          | conda_deps       |
|  2 | coreutils       | 8.32-4.1ubuntu1.2       | 8.32-4.1ubuntu1.2       |          | conda_deps       |
|  3 | curl            | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu1.23      |          | conda_deps       |
|  4 | libxml2         | 2.9.13+dfsg-1ubuntu0.11 | 2.9.13+dfsg-1ubuntu0.11 |          | conda_deps       |
|  5 | locales         | 2.35-0ubuntu3.13        | 2.35-0ubuntu3.13        |          | conda_deps       |
|  6 | tzdata          | 2025b-0ubuntu0.22.04.1  | 2025b-0ubuntu0.22.04.1  |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 11.0.0       | Version in 11.1.0       | Status   | Build-Step     |
|---:|:-------------|:------------------------|:------------------------|:---------|:---------------|
|  0 | cppzmq       | =4.10.0                 | =4.10.0                 |          | udfclient_deps |
|  1 | cuda-toolkit | =12.9.1                 | =12.9.1                 |          | language_deps  |
|  2 | libarrow     | =22.0.0=h552f9d5_3_cuda | =22.0.0=h552f9d5_3_cuda |          | language_deps  |
|  3 | libprotobuf  | =6.31.1                 | =6.31.1                 |          | udfclient_deps |
|  4 | mamba        | =2.3.3                  | =2.3.3                  |          | language_deps  |
|  5 | nss          | =3.100                  | =3.100                  |          | udfclient_deps |
|  6 | numpy        | =1.26.2                 | =1.26.2                 |          | language_deps  |
|  7 | pandas       | =2.3.1                  | =2.3.1                  |          | language_deps  |
|  8 | pyarrow      | =22.0.0                 | =22.0.0                 |          | language_deps  |
|  9 | python       | =3.10.4                 | =3.10.4                 |          | language_deps  |
| 10 | zeromq       | =4.3.5                  | =4.3.5                  |          | udfclient_deps |