# Public packages comparison between flavor "Test Exasol 8 Cuda Ml" in 11.4.0 and flavor "Test Exasol 8 Cuda Ml" in 11.3.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.3.0      | Version in 11.4.0      | Status   | Build-Step       |
|---:|:----------------|:-----------------------|:-----------------------|:---------|:-----------------|
|  0 | adduser         | 3.137ubuntu*           | 3.137ubuntu*           |          | conda_deps       |
|  1 | bzip2           | 1.0.8-5.1build0.1      | 1.0.8-5.1build0.1      |          | conda_deps       |
|  2 | ca-certificates | 20260601~24.04.1       | 20260601~24.04.1       |          | conda_deps       |
|  3 | coreutils       | 9.4-3ubuntu*           | 9.4-3ubuntu*           |          | conda_deps       |
|  4 | curl            | 8.5.0-2ubuntu*         | 8.5.0-2ubuntu*         |          | conda_deps       |
|  5 | libxml2         | 2.9.14+dfsg-1.3ubuntu* | 2.9.14+dfsg-1.3ubuntu* |          | conda_deps       |
|  6 | locales         | 2.39-0ubuntu*          | 2.39-0ubuntu*          |          | conda_deps       |
|  7 | tzdata          | 2026*                  | 2026*                  |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 11.3.0              | Version in 11.4.0               | Status   | Build-Step       |
|---:|:-------------|:-------------------------------|:--------------------------------|:---------|:-----------------|
|  0 | cuda-nvcc    | =12.9.86                       | =13.3.73                        | UPDATED  | flavor_base_deps |
|  1 | cuda-nvrtc   | =12.9.86                       | =13.3.33                        | UPDATED  | flavor_base_deps |
|  2 | cuda-toolkit | =12.9.1                        | =13.3.1                         | UPDATED  | flavor_base_deps |
|  3 | cudnn        | =9.13.1.26                     | =9.25.0.15                      | UPDATED  | flavor_base_deps |
|  4 | numba        | =0.62.1                        | =0.66.0                         | UPDATED  | flavor_base_deps |
|  5 | numba-cuda   | =0.20.0                        | =0.30.4                         | UPDATED  | flavor_base_deps |
|  6 | pytorch      | =2.8.0=cuda129_generic_py312_* | =2.13.0=cuda130_generic_py312_* | UPDATED  | flavor_base_deps |
|  7 | libarrow     | =22.0.0=*_cuda                 | =25.0.0=*_cuda                  | UPDATED  | language_deps    |
|  8 | mamba        | =2.3.3                         | =2.8.1                          | UPDATED  | language_deps    |
|  9 | numpy        | =1.26.2                        | =2.4.6                          | UPDATED  | language_deps    |
| 10 | pyarrow      | =22.0.0                        | =25.0.0                         | UPDATED  | language_deps    |
| 11 | python       | =3.12.11                       | =3.12.13                        | UPDATED  | language_deps    |
| 12 | cppzmq       | =4.10.0                        | =4.11.0                         | UPDATED  | udfclient_deps   |
| 13 | libprotobuf  | =6.31.1                        | =7.35.1                         | UPDATED  | udfclient_deps   |
| 14 | nss          | =3.116                         | =3.118                          | UPDATED  | udfclient_deps   |
| 15 | pandas       | =2.3.3                         | =2.3.3                          |          | language_deps    |
| 16 | zeromq       | =4.3.5                         | =4.3.5                          |          | udfclient_deps   |