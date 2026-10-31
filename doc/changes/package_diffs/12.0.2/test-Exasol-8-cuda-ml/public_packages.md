# Public packages comparison between flavor "Test Exasol 8 Cuda Ml" in 12.0.2 and flavor "Test Exasol 8 Cuda Ml" in 12.0.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 12.0.1      | Version in 12.0.2      | Status   | Build-Step       |
|---:|:----------------|:-----------------------|:-----------------------|:---------|:-----------------|
|  0 | adduser         | 3.137ubuntu*           | 3.137ubuntu*           |          | conda_deps       |
|  1 | bzip2           | 1.0.8-*                | 1.0.8-*                |          | conda_deps       |
|  2 | ca-certificates | *                      | *                      |          | conda_deps       |
|  3 | coreutils       | 9.4-3ubuntu*           | 9.4-3ubuntu*           |          | conda_deps       |
|  4 | curl            | 8.5.0-2ubuntu*         | 8.5.0-2ubuntu*         |          | conda_deps       |
|  5 | libxml2         | 2.9.14+dfsg-1.3ubuntu* | 2.9.14+dfsg-1.3ubuntu* |          | conda_deps       |
|  6 | locales         | 2.39-0ubuntu*          | 2.39-0ubuntu*          |          | conda_deps       |
|  7 | tzdata          | 2026*                  | 2026*                  |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 12.0.1               | Version in 12.0.2               | Status   | Build-Step       |
|---:|:-------------|:--------------------------------|:--------------------------------|:---------|:-----------------|
|  0 | cuda-nvcc    | =13.3.73                        | =13.3.73                        |          | flavor_base_deps |
|  1 | cuda-nvrtc   | =13.3.33                        | =13.3.33                        |          | flavor_base_deps |
|  2 | cuda-toolkit | =13.3.1                         | =13.3.1                         |          | flavor_base_deps |
|  3 | cudnn        | =9.25.0.15                      | =9.25.0.15                      |          | flavor_base_deps |
|  4 | numba        | =0.66.0                         | =0.66.0                         |          | flavor_base_deps |
|  5 | numba-cuda   | =0.30.4                         | =0.30.4                         |          | flavor_base_deps |
|  6 | pytorch      | =2.13.0=cuda130_generic_py312_* | =2.13.0=cuda130_generic_py312_* |          | flavor_base_deps |
|  7 | libarrow     | =25.0.0=*_cuda                  | =25.0.0=*_cuda                  |          | language_deps    |
|  8 | mamba        | =2.8.1                          | =2.8.1                          |          | language_deps    |
|  9 | numpy        | =2.4.6                          | =2.4.6                          |          | language_deps    |
| 10 | pandas       | =2.3.3                          | =2.3.3                          |          | language_deps    |
| 11 | pyarrow      | =25.0.0                         | =25.0.0                         |          | language_deps    |
| 12 | python       | =3.12.13                        | =3.12.13                        |          | language_deps    |
| 13 | cppzmq       | =4.11.0                         | =4.11.0                         |          | udfclient_deps   |
| 14 | libprotobuf  | =7.35.1                         | =7.35.1                         |          | udfclient_deps   |
| 15 | nss          | =3.118                          | =3.118                          |          | udfclient_deps   |
| 16 | zeromq       | =4.3.5                          | =4.3.5                          |          | udfclient_deps   |