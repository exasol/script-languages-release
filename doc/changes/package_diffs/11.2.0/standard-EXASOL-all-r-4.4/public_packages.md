# Public packages comparison between flavor "Standard Exasol All R 4.4" in 11.2.0 and flavor "Standard Exasol All R 4.4" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.1.1       | Version in 11.2.0   | Status   | Build-Step       |
|---:|:---------------------|:------------------------|:--------------------|:---------|:-----------------|
|  0 | cmake                | 3.22.1-1ubuntu1.22.04.2 | 3.22.1-1ubuntu*     | UPDATED  | flavor_base_deps |
|  1 | git                  | 1:2.34.1-1ubuntu1.17    | 1:2.34.1-1ubuntu*   | UPDATED  | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu*     | UPDATED  | flavor_base_deps |
|  3 | unixodbc-dev         | 2.3.9-5ubuntu0.1        | 2.3.9-5ubuntu*      | UPDATED  | flavor_base_deps |
|  4 | unzip                | 6.0-26ubuntu3.2         | 6.0-26ubuntu*       | UPDATED  | flavor_base_deps |
|  5 | wget                 | 1.21.2-2ubuntu1.1       | 1.21.2-2ubuntu*     | UPDATED  | flavor_base_deps |
|  6 | curl                 | 7.81.0-1ubuntu1.23      | 7.81.0-1ubuntu*     | UPDATED  | language_deps    |
|  7 | libexpat1            | 2.4.7-1ubuntu0.7        | 2.4.7-1ubuntu*      | UPDATED  | language_deps    |
|  8 | libexpat1-dev        | 2.4.7-1ubuntu0.7        | 2.4.7-1ubuntu*      | UPDATED  | language_deps    |
|  9 | coreutils            | 8.32-4.1ubuntu1.2       | 8.32-4.1ubuntu*     | UPDATED  | udfclient_deps   |
| 10 | libnss-db            | 2.2.3pre1-6ubuntu3      | 2.2.3pre1-6ubuntu*  | UPDATED  | udfclient_deps   |
| 11 | libprotobuf-dev      | 3.12.4-1ubuntu7.22.04.6 | 3.12.4-1ubuntu*     | UPDATED  | udfclient_deps   |
| 12 | libssl-dev           | 3.0.2-0ubuntu1.21       | 3.0.2-0ubuntu*      | UPDATED  | udfclient_deps   |
| 13 | locales              | 2.35-0ubuntu3.13        | 2.35-0ubuntu*       | UPDATED  | udfclient_deps   |
| 14 | libhiredis-dev       | 0.14.1-2                | 0.14.1-2            |          | flavor_base_deps |
| 15 | ca-certificates      | 20240203~22.04.1        | 20240203~22.04.1    |          | language_deps    |
| 16 | gnupg                | 2.2.27-3ubuntu2.5       | 2.2.27-3ubuntu2.5   |          | language_deps    |
| 17 | r-base-core          | 4.5.2-1.2204.0          | 4.5.2-1.2204.0      |          | language_deps    |
| 18 | r-base-dev           | 4.5.2-1.2204.0          | 4.5.2-1.2204.0      |          | language_deps    |
| 19 | libzmq3-dev          | 4.3.4-2                 | 4.3.4-2             |          | udfclient_deps   |

## R packages

|    | Package       | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step       |
|---:|:--------------|:--------------------|:--------------------|:---------|:-----------------|
|  0 | BradleyTerry2 | 1.1-2               | 1.1-2               |          | flavor_base_deps |
|  1 | Formula       | 1.2-5               | 1.2-5               |          | flavor_base_deps |
|  2 | RCurl         | 1.98-1.14           | 1.98-1.14           |          | flavor_base_deps |
|  3 | RODBC         | 1.3-23              | 1.3-23              |          | flavor_base_deps |
|  4 | Rcpp          | 1.0.12              | 1.0.12              |          | flavor_base_deps |
|  5 | SparseM       | 1.81                | 1.81                |          | flavor_base_deps |
|  6 | XML           | 3.99-0.16.1         | 3.99-0.16.1         |          | flavor_base_deps |
|  7 | acepack       | 1.4.2               | 1.4.2               |          | flavor_base_deps |
|  8 | brglm         | 0.7.2               | 0.7.2               |          | flavor_base_deps |
|  9 | caret         | 6.0-94              | 6.0-94              |          | flavor_base_deps |
| 10 | caretEnsemble | 2.0.3               | 2.0.3               |          | flavor_base_deps |
| 11 | chron         | 2.3-61              | 2.3-61              |          | flavor_base_deps |
| 12 | data.table    | 1.17.4              | 1.17.4              |          | flavor_base_deps |
| 13 | digest        | 0.6.37              | 0.6.37              |          | flavor_base_deps |
| 14 | dplyr         | 1.2.0               | 1.2.0               |          | flavor_base_deps |
| 15 | e1071         | 1.7-14              | 1.7-14              |          | flavor_base_deps |
| 16 | fastcluster   | 1.2.6               | 1.2.6               |          | flavor_base_deps |
| 17 | flashClust    | 1.01-2              | 1.01-2              |          | flavor_base_deps |
| 18 | foreach       | 1.5.2               | 1.5.2               |          | flavor_base_deps |
| 19 | gbm           | 2.1.9               | 2.1.9               |          | flavor_base_deps |
| 20 | glue          | 1.7.0               | 1.7.0               |          | flavor_base_deps |
| 21 | gtools        | 3.9.5               | 3.9.5               |          | flavor_base_deps |
| 22 | htmltools     | 0.5.8.1             | 0.5.8.1             |          | flavor_base_deps |
| 23 | httr          | 1.4.7               | 1.4.7               |          | flavor_base_deps |
| 24 | iterators     | 1.0.14              | 1.0.14              |          | flavor_base_deps |
| 25 | jsonlite      | 1.8.8               | 1.8.8               |          | flavor_base_deps |
| 26 | lme4          | 1.1-35.3            | 1.1-35.3            |          | flavor_base_deps |
| 27 | magrittr      | 2.0.4               | 2.0.4               |          | flavor_base_deps |
| 28 | minqa         | 1.2.6               | 1.2.6               |          | flavor_base_deps |
| 29 | nloptr        | 2.0.3               | 2.0.3               |          | flavor_base_deps |
| 30 | oysteR        | 0.1.1               | 0.1.1               |          | flavor_base_deps |
| 31 | plyr          | 1.8.9               | 1.8.9               |          | flavor_base_deps |
| 32 | profileModel  | 0.6.1               | 0.6.1               |          | flavor_base_deps |
| 33 | proto         | 1.0.0               | 1.0.0               |          | flavor_base_deps |
| 34 | purrr         | 1.0.2               | 1.0.2               |          | flavor_base_deps |
| 35 | randomForest  | 4.7-1.2             | 4.7-1.2             |          | flavor_base_deps |
| 36 | redux         | 1.1.4               | 1.1.4               |          | flavor_base_deps |
| 37 | reshape2      | 1.4.4               | 1.4.4               |          | flavor_base_deps |
| 38 | rjson         | 0.2.21              | 0.2.21              |          | flavor_base_deps |
| 39 | scales        | 1.4.0               | 1.4.0               |          | flavor_base_deps |
| 40 | stringr       | 1.5.1               | 1.5.1               |          | flavor_base_deps |
| 41 | tibble        | 3.2.1               | 3.2.1               |          | flavor_base_deps |
| 42 | tidyr         | 1.3.1               | 1.3.1               |          | flavor_base_deps |
| 43 | yaml          | 2.3.8               | 2.3.8               |          | flavor_base_deps |