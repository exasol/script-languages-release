# Public packages comparison between flavor "Test Exasol 8 Cuda Ml" in 11.1.0 and flavor "Test Exasol 8 Cuda Ml" in 11.0.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package         | Version in 11.0.0        | Version in 11.1.0        | Status   | Build-Step       |
|---:|:----------------|:-------------------------|:-------------------------|:---------|:-----------------|
|  0 | adduser         | 3.137ubuntu1             | 3.137ubuntu1             |          | conda_deps       |
|  1 | bzip2           | 1.0.8-5.1build0.1        | 1.0.8-5.1build0.1        |          | conda_deps       |
|  2 | ca-certificates | 20240203                 | 20240203                 |          | conda_deps       |
|  3 | coreutils       | 9.4-3ubuntu6.1           | 9.4-3ubuntu6.1           |          | conda_deps       |
|  4 | curl            | 8.5.0-2ubuntu10.8        | 8.5.0-2ubuntu10.8        |          | conda_deps       |
|  5 | libxml2         | 2.9.14+dfsg-1.3ubuntu3.7 | 2.9.14+dfsg-1.3ubuntu3.7 |          | conda_deps       |
|  6 | locales         | 2.39-0ubuntu8.7          | 2.39-0ubuntu8.7          |          | conda_deps       |
|  7 | tzdata          | 2025b-0ubuntu0.24.04.1   | 2025b-0ubuntu0.24.04.1   |          | flavor_base_deps |

## Conda packages

|    | Package      | Version in 11.0.0                         | Version in 11.1.0                         | Status   | Build-Step       |
|---:|:-------------|:------------------------------------------|:------------------------------------------|:---------|:-----------------|
|  0 | cppzmq       | =4.10.0                                   | =4.10.0                                   |          | udfclient_deps   |
|  1 | cuda-nvcc    | =12.9.86                                  | =12.9.86                                  |          | flavor_base_deps |
|  2 | cuda-nvrtc   | =12.9.86                                  | =12.9.86                                  |          | flavor_base_deps |
|  3 | cuda-toolkit | =12.9.1                                   | =12.9.1                                   |          | flavor_base_deps |
|  4 | cudnn        | =9.13.1.26                                | =9.13.1.26                                |          | flavor_base_deps |
|  5 | libarrow     | =22.0.0=h552f9d5_3_cuda                   | =22.0.0=h552f9d5_3_cuda                   |          | language_deps    |
|  6 | libprotobuf  | =6.31.1                                   | =6.31.1                                   |          | udfclient_deps   |
|  7 | mamba        | =2.3.3                                    | =2.3.3                                    |          | language_deps    |
|  8 | nss          | =3.116                                    | =3.116                                    |          | udfclient_deps   |
|  9 | numba        | =0.62.1                                   | =0.62.1                                   |          | flavor_base_deps |
| 10 | numba-cuda   | =0.20.0                                   | =0.20.0                                   |          | flavor_base_deps |
| 11 | numpy        | =1.26.2                                   | =1.26.2                                   |          | language_deps    |
| 12 | pandas       | =2.3.3                                    | =2.3.3                                    |          | language_deps    |
| 13 | pyarrow      | =22.0.0                                   | =22.0.0                                   |          | language_deps    |
| 14 | python       | =3.12.11                                  | =3.12.11                                  |          | language_deps    |
| 15 | pytorch      | =2.8.0=cuda129_generic_py312_h464b887_201 | =2.8.0=cuda129_generic_py312_h464b887_201 |          | flavor_base_deps |
| 16 | zeromq       | =4.3.5                                    | =4.3.5                                    |          | udfclient_deps   |