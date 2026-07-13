# Public packages comparison between flavor "Test Exasol 8 Cuda Ml" in 11.3.0 and flavor "Test Exasol 8 Cuda Ml" in 11.2.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.2.0      | Version in 11.3.0      | Status   | Build-Step       |
|---:|:----------------|:-----------------------|:-----------------------|:---------|:-----------------|
|  0 | tzdata          | 2026a-0ubuntu*         | 2026*                  | UPDATED  | flavor_base_deps |
|  1 | adduser         | 3.137ubuntu*           | 3.137ubuntu*           |          | conda_deps       |
|  2 | bzip2           | 1.0.8-5.1build0.1      | 1.0.8-5.1build0.1      |          | conda_deps       |
|  3 | ca-certificates | 20260601~24.04.1       | 20260601~24.04.1       |          | conda_deps       |
|  4 | coreutils       | 9.4-3ubuntu*           | 9.4-3ubuntu*           |          | conda_deps       |
|  5 | curl            | 8.5.0-2ubuntu*         | 8.5.0-2ubuntu*         |          | conda_deps       |
|  6 | libxml2         | 2.9.14+dfsg-1.3ubuntu* | 2.9.14+dfsg-1.3ubuntu* |          | conda_deps       |
|  7 | locales         | 2.39-0ubuntu*          | 2.39-0ubuntu*          |          | conda_deps       |

## Conda packages

|    | Package      | Version in 11.2.0              | Version in 11.3.0              | Status   | Build-Step       |
|---:|:-------------|:-------------------------------|:-------------------------------|:---------|:-----------------|
|  0 | cuda-nvcc    | =12.9.86                       | =12.9.86                       |          | flavor_base_deps |
|  1 | cuda-nvrtc   | =12.9.86                       | =12.9.86                       |          | flavor_base_deps |
|  2 | cuda-toolkit | =12.9.1                        | =12.9.1                        |          | flavor_base_deps |
|  3 | cudnn        | =9.13.1.26                     | =9.13.1.26                     |          | flavor_base_deps |
|  4 | numba        | =0.62.1                        | =0.62.1                        |          | flavor_base_deps |
|  5 | numba-cuda   | =0.20.0                        | =0.20.0                        |          | flavor_base_deps |
|  6 | pytorch      | =2.8.0=cuda129_generic_py312_* | =2.8.0=cuda129_generic_py312_* |          | flavor_base_deps |
|  7 | libarrow     | =22.0.0=*_cuda                 | =22.0.0=*_cuda                 |          | language_deps    |
|  8 | mamba        | =2.3.3                         | =2.3.3                         |          | language_deps    |
|  9 | numpy        | =1.26.2                        | =1.26.2                        |          | language_deps    |
| 10 | pandas       | =2.3.3                         | =2.3.3                         |          | language_deps    |
| 11 | pyarrow      | =22.0.0                        | =22.0.0                        |          | language_deps    |
| 12 | python       | =3.12.11                       | =3.12.11                       |          | language_deps    |
| 13 | cppzmq       | =4.10.0                        | =4.10.0                        |          | udfclient_deps   |
| 14 | libprotobuf  | =6.31.1                        | =6.31.1                        |          | udfclient_deps   |
| 15 | nss          | =3.116                         | =3.116                         |          | udfclient_deps   |
| 16 | zeromq       | =4.3.5                         | =4.3.5                         |          | udfclient_deps   |