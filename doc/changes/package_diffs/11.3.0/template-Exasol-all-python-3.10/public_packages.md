# Public packages comparison between flavor "Template Exasol All Python 3.10" in 11.3.0 and flavor "Template Exasol All Python 3.10" in 11.2.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.2.0   | Version in 11.3.0   | Status   | Build-Step       |
|---:|:---------------------|:--------------------|:--------------------|:---------|:-----------------|
|  0 | tzdata               | 2026a-0ubuntu*      | 2026*               | UPDATED  | flavor_base_deps |
|  1 | python3-distutils    | 3.10.8-1~22.04      | 3.10.8*             | UPDATED  | language_deps    |
|  2 | python3.10-dev       | 3.10.12-1~22.04.15  | 3.10.12*            | UPDATED  | language_deps    |
|  3 | build-essential      | 12.9ubuntu*         | 12.9ubuntu*         |          | flavor_base_deps |
|  4 | git                  | 1:2.34.1-1ubuntu*   | 1:2.34.1-1ubuntu*   |          | flavor_base_deps |
|  5 | libcurl4-openssl-dev | 7.81.0-1ubuntu*     | 7.81.0-1ubuntu*     |          | flavor_base_deps |
|  6 | unzip                | 6.0-26ubuntu*       | 6.0-26ubuntu*       |          | flavor_base_deps |
|  7 | ca-certificates      | 20260601~22.04.1    | 20260601~22.04.1    |          | language_deps    |
|  8 | curl                 | 7.81.0-1ubuntu*     | 7.81.0-1ubuntu*     |          | language_deps    |
|  9 | coreutils            | 8.32-4.1ubuntu*     | 8.32-4.1ubuntu*     |          | udfclient_deps   |
| 10 | libnss-db            | 2.2.3pre1-6ubuntu*  | 2.2.3pre1-6ubuntu*  |          | udfclient_deps   |
| 11 | libprotobuf-dev      | 3.12.4-1ubuntu*     | 3.12.4-1ubuntu*     |          | udfclient_deps   |
| 12 | libssl-dev           | 3.0.2-0ubuntu*      | 3.0.2-0ubuntu*      |          | udfclient_deps   |
| 13 | libzmq3-dev          | 4.3.4-2             | 4.3.4-2             |          | udfclient_deps   |
| 14 | locales              | 2.35-0ubuntu*       | 2.35-0ubuntu*       |          | udfclient_deps   |

## Pip packages

|    | Package   | Version in 11.2.0   | Version in 11.3.0   | Status   | Build-Step    |
|---:|:----------|:--------------------|:--------------------|:---------|:--------------|
|  0 | numpy     | ==1.26.4            | ==1.26.4            |          | language_deps |
|  1 | pandas    | ==2.2.3             | ==2.2.3             |          | language_deps |
|  2 | pyarrow   | ==22.0.0            | ==22.0.0            |          | language_deps |