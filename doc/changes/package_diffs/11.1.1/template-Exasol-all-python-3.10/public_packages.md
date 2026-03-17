# Public packages comparison between flavor "Template Exasol All Python 3.10" in 11.1.1 and flavor "Template Exasol All Python 3.10" in 11.1.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.1.0       | Version in 11.1.1       | Status   | Build-Step       |
|---:|:---------------------|:------------------------|:------------------------|:---------|:-----------------|
|  0 | build-essential      | 12.9ubuntu3             | 12.9ubuntu3             |          | flavor_base_deps |
|  1 | git                  | 1:2.34.1-1ubuntu1.17    | 1:2.34.1-1ubuntu1.17    |          | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu1.23      |          | flavor_base_deps |
|  3 | tzdata               | 2025b-0ubuntu0.22.04.1  | 2025b-0ubuntu0.22.04.1  |          | flavor_base_deps |
|  4 | unzip                | 6.0-26ubuntu3.2         | 6.0-26ubuntu3.2         |          | flavor_base_deps |
|  5 | ca-certificates      | 20240203~22.04.1        | 20240203~22.04.1        |          | language_deps    |
|  6 | curl                 | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu1.23      |          | language_deps    |
|  7 | python3-distutils    | 3.10.8-1~22.04          | 3.10.8-1~22.04          |          | language_deps    |
|  8 | python3.10-dev       | 3.10.12-1~22.04.15      | 3.10.12-1~22.04.15      |          | language_deps    |
|  9 | coreutils            | 8.32-4.1ubuntu1.2       | 8.32-4.1ubuntu1.2       |          | udfclient_deps   |
| 10 | libnss-db            | 2.2.3pre1-6ubuntu3      | 2.2.3pre1-6ubuntu3      |          | udfclient_deps   |
| 11 | libprotobuf-dev      | 3.12.4-1ubuntu7.22.04.6 | 3.12.4-1ubuntu7.22.04.6 |          | udfclient_deps   |
| 12 | libssl-dev           | 3.0.2-0ubuntu1.21       | 3.0.2-0ubuntu1.21       |          | udfclient_deps   |
| 13 | libzmq3-dev          | 4.3.4-2                 | 4.3.4-2                 |          | udfclient_deps   |
| 14 | locales              | 2.35-0ubuntu3.13        | 2.35-0ubuntu3.13        |          | udfclient_deps   |

## Pip packages

|    | Package   | Version in 11.1.0   | Version in 11.1.1   | Status   | Build-Step    |
|---:|:----------|:--------------------|:--------------------|:---------|:--------------|
|  0 | numpy     | ==1.26.4            | ==1.26.4            |          | language_deps |
|  1 | pandas    | ==2.2.3             | ==2.2.3             |          | language_deps |
|  2 | pyarrow   | ==22.0.0            | ==22.0.0            |          | language_deps |