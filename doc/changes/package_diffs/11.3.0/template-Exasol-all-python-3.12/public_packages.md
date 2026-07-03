# Public packages comparison between flavor "Template Exasol All Python 3.12" in 11.3.0 and flavor "Template Exasol All Python 3.12" in 11.2.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.2.0   | Version in 11.3.0   | Status   | Build-Step       |
|---:|:---------------------|:--------------------|:--------------------|:---------|:-----------------|
|  0 | build-essential      | 12.10ubuntu*        | 12.10ubuntu*        |          | flavor_base_deps |
|  1 | git                  | 1:2.43.0-1ubuntu*   | 1:2.43.0-1ubuntu*   |          | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 8.5.0-2ubuntu*      | 8.5.0-2ubuntu*      |          | flavor_base_deps |
|  3 | unzip                | 6.0-28ubuntu*       | 6.0-28ubuntu*       |          | flavor_base_deps |
|  4 | ca-certificates      | 20260601~24.04.1    | 20260601~24.04.1    |          | language_deps    |
|  5 | curl                 | 8.5.0-2ubuntu*      | 8.5.0-2ubuntu*      |          | language_deps    |
|  6 | python3.12-dev       | 3.12.3-1ubuntu*     | 3.12.3-1ubuntu*     |          | language_deps    |
|  7 | adduser              | 3.137ubuntu*        | 3.137ubuntu*        |          | udfclient_deps   |
|  8 | coreutils            | 9.4-3ubuntu*        | 9.4-3ubuntu*        |          | udfclient_deps   |
|  9 | cppzmq-dev           | 4.10.0-1build1      | 4.10.0-1build1      |          | udfclient_deps   |
| 10 | libnss-db            | 2.2.3pre1-9build3   | 2.2.3pre1-9build3   |          | udfclient_deps   |
| 11 | libprotobuf-dev      | 3.21.12-8.2ubuntu*  | 3.21.12-8.2ubuntu*  |          | udfclient_deps   |
| 12 | libssl-dev           | 3.0.13-0ubuntu*     | 3.0.13-0ubuntu*     |          | udfclient_deps   |
| 13 | libzmq3-dev          | 4.3.5-1build2       | 4.3.5-1build2       |          | udfclient_deps   |
| 14 | locales              | 2.39-0ubuntu*       | 2.39-0ubuntu*       |          | udfclient_deps   |

## Pip packages

|    | Package   | Version in 11.2.0   | Version in 11.3.0   | Status   | Build-Step    |
|---:|:----------|:--------------------|:--------------------|:---------|:--------------|
|  0 | numpy     | ==1.26.4            | ==1.26.4            |          | language_deps |
|  1 | pandas    | ==2.2.3             | ==2.2.3             |          | language_deps |
|  2 | pyarrow   | ==22.0.0            | ==22.0.0            |          | language_deps |