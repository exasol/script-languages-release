# Public packages comparison between flavor "Template Exasol All Python 3.12" in 11.2.0 and flavor "Template Exasol All Python 3.12" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.1.1    | Version in 11.2.0   | Status   | Build-Step       |
|---:|:---------------------|:---------------------|:--------------------|:---------|:-----------------|
|  0 | build-essential      | 12.10ubuntu1         | 12.10ubuntu*        | UPDATED  | flavor_base_deps |
|  1 | git                  | 1:2.43.0-1ubuntu7.3  | 1:2.43.0-1ubuntu*   | UPDATED  | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 8.5.0-2ubuntu10.8    | 8.5.0-2ubuntu*      | UPDATED  | flavor_base_deps |
|  3 | unzip                | 6.0-28ubuntu4.1      | 6.0-28ubuntu*       | UPDATED  | flavor_base_deps |
|  4 | curl                 | 8.5.0-2ubuntu10.8    | 8.5.0-2ubuntu*      | UPDATED  | language_deps    |
|  5 | python3.12-dev       | 3.12.3-1ubuntu0.12   | 3.12.3-1ubuntu*     | UPDATED  | language_deps    |
|  6 | adduser              | 3.137ubuntu1         | 3.137ubuntu*        | UPDATED  | udfclient_deps   |
|  7 | coreutils            | 9.4-3ubuntu6.1       | 9.4-3ubuntu*        | UPDATED  | udfclient_deps   |
|  8 | libprotobuf-dev      | 3.21.12-8.2ubuntu0.3 | 3.21.12-8.2ubuntu*  | UPDATED  | udfclient_deps   |
|  9 | libssl-dev           | 3.0.13-0ubuntu3.7    | 3.0.13-0ubuntu*     | UPDATED  | udfclient_deps   |
| 10 | locales              | 2.39-0ubuntu8.7      | 2.39-0ubuntu*       | UPDATED  | udfclient_deps   |
| 11 | ca-certificates      | 20240203             | 20240203            |          | language_deps    |
| 12 | cppzmq-dev           | 4.10.0-1build1       | 4.10.0-1build1      |          | udfclient_deps   |
| 13 | libnss-db            | 2.2.3pre1-9build3    | 2.2.3pre1-9build3   |          | udfclient_deps   |
| 14 | libzmq3-dev          | 4.3.5-1build2        | 4.3.5-1build2       |          | udfclient_deps   |

## Pip packages

|    | Package   | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step    |
|---:|:----------|:--------------------|:--------------------|:---------|:--------------|
|  0 | numpy     | ==1.26.4            | ==1.26.4            |          | language_deps |
|  1 | pandas    | ==2.2.3             | ==2.2.3             |          | language_deps |
|  2 | pyarrow   | ==22.0.0            | ==22.0.0            |          | language_deps |