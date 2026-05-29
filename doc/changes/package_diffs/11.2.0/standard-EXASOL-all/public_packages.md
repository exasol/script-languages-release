# Public packages comparison between flavor "Standard Exasol All" in 11.2.0 and flavor "Standard Exasol All" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package                 | Version in 11.1.1            | Version in 11.2.0       | Status   | Build-Step           |
|---:|:------------------------|:-----------------------------|:------------------------|:---------|:---------------------|
|  0 | build-essential         | 12.9ubuntu3                  | 12.9ubuntu*             | UPDATED  | flavor_base_deps_apt |
|  1 | cmake                   | 3.22.1-1ubuntu1.22.04.2      | 3.22.1-1ubuntu*         | UPDATED  | flavor_base_deps_apt |
|  2 | git                     | 1:2.34.1-1ubuntu1.17         | 1:2.34.1-1ubuntu*       | UPDATED  | flavor_base_deps_apt |
|  3 | ldap-utils              | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu*    | UPDATED  | flavor_base_deps_apt |
|  4 | libcurl4-openssl-dev    | 7.81.0-1ubuntu1.23           | 7.81.0-1ubuntu*         | UPDATED  | flavor_base_deps_apt |
|  5 | libldap2-dev            | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu*    | UPDATED  | flavor_base_deps_apt |
|  6 | libldb2                 | 2:2.4.4-0ubuntu0.22.04.2     | 2:2.4.4-0ubuntu*        | UPDATED  | flavor_base_deps_apt |
|  7 | libsasl2-dev            | 2.1.27+dfsg2-3ubuntu1.2      | 2.1.27+dfsg2-3ubuntu*   | UPDATED  | flavor_base_deps_apt |
|  8 | libsmbclient            | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu* | UPDATED  | flavor_base_deps_apt |
|  9 | libsmbclient-dev        | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu* | UPDATED  | flavor_base_deps_apt |
| 10 | libxml2-dev             | 2.9.13+dfsg-1ubuntu0.11      | 2.9.13+dfsg-1ubuntu*    | UPDATED  | flavor_base_deps_apt |
| 11 | openssl                 | 3.0.2-0ubuntu1.21            | 3.0.2-0ubuntu*          | UPDATED  | flavor_base_deps_apt |
| 12 | slapd                   | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu*    | UPDATED  | flavor_base_deps_apt |
| 13 | smbclient               | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu* | UPDATED  | flavor_base_deps_apt |
| 14 | unixodbc-dev            | 2.3.9-5ubuntu0.1             | 2.3.9-5ubuntu*          | UPDATED  | flavor_base_deps_apt |
| 15 | unzip                   | 6.0-26ubuntu3.2              | 6.0-26ubuntu*           | UPDATED  | flavor_base_deps_apt |
| 16 | wget                    | 1.21.2-2ubuntu1.1            | 1.21.2-2ubuntu*         | UPDATED  | flavor_base_deps_apt |
| 17 | curl                    | 7.81.0-1ubuntu1.23           | 7.81.0-1ubuntu*         | UPDATED  | language_deps        |
| 18 | libexpat1               | 2.4.7-1ubuntu0.7             | 2.4.7-1ubuntu*          | UPDATED  | language_deps        |
| 19 | libexpat1-dev           | 2.4.7-1ubuntu0.7             | 2.4.7-1ubuntu*          | UPDATED  | language_deps        |
| 20 | openjdk-11-jdk-headless | 11.0.30+7-1ubuntu1~22.04     | 11.0.31+11-1ubuntu*     | UPDATED  | language_deps        |
| 21 | coreutils               | 8.32-4.1ubuntu1.2            | 8.32-4.1ubuntu*         | UPDATED  | udfclient_deps       |
| 22 | libnss-db               | 2.2.3pre1-6ubuntu3           | 2.2.3pre1-6ubuntu*      | UPDATED  | udfclient_deps       |
| 23 | libprotobuf-dev         | 3.12.4-1ubuntu7.22.04.6      | 3.12.4-1ubuntu*         | UPDATED  | udfclient_deps       |
| 24 | libssl-dev              | 3.0.2-0ubuntu1.21            | 3.0.2-0ubuntu*          | UPDATED  | udfclient_deps       |
| 25 | locales                 | 2.35-0ubuntu3.13             | 2.35-0ubuntu*           | UPDATED  | udfclient_deps       |
| 26 | trivy                   | 0.69.3                       |                         | REMOVED  | flavor_base_deps_apt |
| 27 | apt-transport-https     | 2.4.14                       | 2.4.14                  |          | flavor_base_deps_apt |
| 28 | libhiredis-dev          | 0.14.1-2                     | 0.14.1-2                |          | flavor_base_deps_apt |
| 29 | libleveldb-dev          | 1.23-3build1                 | 1.23-3build1            |          | flavor_base_deps_apt |
| 30 | libleveldb1d            | 1.23-3build1                 | 1.23-3build1            |          | flavor_base_deps_apt |
| 31 | maven                   | 3.6.3-5                      | 3.6.3-5                 |          | flavor_base_deps_apt |
| 32 | ca-certificates         | 20240203~22.04.1             | 20240203~22.04.1        |          | language_deps        |
| 33 | chrpath                 | 0.16-2                       | 0.16-2                  |          | language_deps        |
| 34 | gnupg                   | 2.2.27-3ubuntu2.5            | 2.2.27-3ubuntu2.5       |          | language_deps        |
| 35 | python3-distutils       | 3.10.8-1~22.04               | 3.10.8-1~22.04          |          | language_deps        |
| 36 | python3.10-dev          | 3.10.12-1~22.04.15           | 3.10.12-1~22.04.15      |          | language_deps        |
| 37 | r-base-core             | 4.5.2-1.2204.0               | 4.5.2-1.2204.0          |          | language_deps        |
| 38 | r-base-dev              | 4.5.2-1.2204.0               | 4.5.2-1.2204.0          |          | language_deps        |
| 39 | libzmq3-dev             | 4.3.4-2                      | 4.3.4-2                 |          | udfclient_deps       |

## Pip packages

|    | Package                                | Version in 11.1.1    | Version in 11.2.0    | Status   | Build-Step              |
|---:|:---------------------------------------|:---------------------|:---------------------|:---------|:------------------------|
|  0 | packaging                              |                      | ==25.0               | NEW      | language_deps           |
|  1 | awscrt                                 | ==0.20.9             | ==0.20.9             |          | flavor_base_deps_python |
|  2 | azure-batch                            | ==14.2.0             | ==14.2.0             |          | flavor_base_deps_python |
|  3 | azure-cosmos                           | ==4.6.0              | ==4.6.0              |          | flavor_base_deps_python |
|  4 | azure-eventgrid                        | ==4.19.0             | ==4.19.0             |          | flavor_base_deps_python |
|  5 | azure-eventhub                         | ==5.11.7             | ==5.11.7             |          | flavor_base_deps_python |
|  6 | azure-eventhub-checkpointstoreblob     | ==1.1.4              | ==1.1.4              |          | flavor_base_deps_python |
|  7 | azure-eventhub-checkpointstoreblob-aio | ==1.1.4              | ==1.1.4              |          | flavor_base_deps_python |
|  8 | azure-identity                         | ==1.16.0             | ==1.16.0             |          | flavor_base_deps_python |
|  9 | azure-keyvault                         | ==4.2.0              | ==4.2.0              |          | flavor_base_deps_python |
| 10 | azure-keyvault-certificates            | ==4.8.0              | ==4.8.0              |          | flavor_base_deps_python |
| 11 | azure-keyvault-keys                    | ==4.9.0              | ==4.9.0              |          | flavor_base_deps_python |
| 12 | azure-keyvault-secrets                 | ==4.8.0              | ==4.8.0              |          | flavor_base_deps_python |
| 13 | azure-kusto-data                       | ==4.4.0              | ==4.4.0              |          | flavor_base_deps_python |
| 14 | azure-loganalytics                     | ==0.1.1              | ==0.1.1              |          | flavor_base_deps_python |
| 15 | azure-servicebus                       | ==7.12.1             | ==7.12.1             |          | flavor_base_deps_python |
| 16 | azure-storage-blob                     | ==12.19.1            | ==12.19.1            |          | flavor_base_deps_python |
| 17 | azure-storage-file-datalake            | ==12.14.0            | ==12.14.0            |          | flavor_base_deps_python |
| 18 | azure-storage-file-share               | ==12.15.0            | ==12.15.0            |          | flavor_base_deps_python |
| 19 | azure-storage-queue                    | ==12.9.0             | ==12.9.0             |          | flavor_base_deps_python |
| 20 | bitarray                               | ==2.9.2              | ==2.9.2              |          | flavor_base_deps_python |
| 21 | bitsets                                | ==0.8.4              | ==0.8.4              |          | flavor_base_deps_python |
| 22 | boto3                                  | ==1.34.98            | ==1.34.98            |          | flavor_base_deps_python |
| 23 | cffi                                   | ==1.16.0             | ==1.16.0             |          | flavor_base_deps_python |
| 24 | cryptography                           | ==45.0.7             | ==45.0.7             |          | flavor_base_deps_python |
| 25 | cython                                 | ==3.0.10             | ==3.0.10             |          | flavor_base_deps_python |
| 26 | debugpy                                | ==1.8.1              | ==1.8.1              |          | flavor_base_deps_python |
| 27 | docutils                               | ==0.21.2             | ==0.21.2             |          | flavor_base_deps_python |
| 28 | exasol-bucketfs                        | ==2.0.0              | ==2.0.0              |          | flavor_base_deps_python |
| 29 | exasol-db-api                          | No version specified | No version specified |          | flavor_base_deps_python |
| 30 | google-cloud-asset                     | ==3.26.1             | ==3.26.1             |          | flavor_base_deps_python |
| 31 | google-cloud-bigquery                  | ==3.21.0             | ==3.21.0             |          | flavor_base_deps_python |
| 32 | google-cloud-bigquery-storage          | ==2.25.0             | ==2.25.0             |          | flavor_base_deps_python |
| 33 | google-cloud-bigtable                  | ==2.23.1             | ==2.23.1             |          | flavor_base_deps_python |
| 34 | google-cloud-containeranalysis         | ==2.14.3             | ==2.14.3             |          | flavor_base_deps_python |
| 35 | google-cloud-datacatalog               | ==3.19.0             | ==3.19.0             |          | flavor_base_deps_python |
| 36 | google-cloud-datastore                 | ==2.19.0             | ==2.19.0             |          | flavor_base_deps_python |
| 37 | google-cloud-firestore                 | ==2.16.0             | ==2.16.0             |          | flavor_base_deps_python |
| 38 | google-cloud-kms                       | ==2.21.4             | ==2.21.4             |          | flavor_base_deps_python |
| 39 | google-cloud-logging                   | ==3.10.0             | ==3.10.0             |          | flavor_base_deps_python |
| 40 | google-cloud-monitoring                | ==2.21.0             | ==2.21.0             |          | flavor_base_deps_python |
| 41 | google-cloud-ndb                       | ==2.3.1              | ==2.3.1              |          | flavor_base_deps_python |
| 42 | google-cloud-pubsub                    | ==2.21.1             | ==2.21.1             |          | flavor_base_deps_python |
| 43 | google-cloud-spanner                   | ==3.46.0             | ==3.46.0             |          | flavor_base_deps_python |
| 44 | google-cloud-storage                   | ==2.16.0             | ==2.16.0             |          | flavor_base_deps_python |
| 45 | google-cloud-trace                     | ==1.13.3             | ==1.13.3             |          | flavor_base_deps_python |
| 46 | h2                                     | ==4.1.0              | ==4.1.0              |          | flavor_base_deps_python |
| 47 | jinja2                                 | ==3.1.4              | ==3.1.4              |          | flavor_base_deps_python |
| 48 | lxml                                   | ==5.2.1              | ==5.2.1              |          | flavor_base_deps_python |
| 49 | martian                                | ==2.0.post1          | ==2.0.post1          |          | flavor_base_deps_python |
| 50 | numba                                  | ==0.59.1             | ==0.59.1             |          | flavor_base_deps_python |
| 51 | paramiko                               | ==3.4.0              | ==3.4.0              |          | flavor_base_deps_python |
| 52 | plyvel                                 | ==1.5.1              | ==1.5.1              |          | flavor_base_deps_python |
| 53 | portalocker                            | ==3.1.1              | ==3.1.1              |          | flavor_base_deps_python |
| 54 | protobuf                               | ==4.25.8             | ==4.25.8             |          | flavor_base_deps_python |
| 55 | pyOpenSSL                              | ==25.3.0             | ==25.3.0             |          | flavor_base_deps_python |
| 56 | pybase64                               | ==1.3.2              | ==1.3.2              |          | flavor_base_deps_python |
| 57 | pybloomfiltermmap3                     | ==0.5.7              | ==0.5.7              |          | flavor_base_deps_python |
| 58 | pycurl                                 | ==7.45.3             | ==7.45.3             |          | flavor_base_deps_python |
| 59 | pyexasol                               | ==2.1.0              | ==2.1.0              |          | flavor_base_deps_python |
| 60 | pyftpdlib                              | ==1.5.9              | ==1.5.9              |          | flavor_base_deps_python |
| 61 | pyodbc                                 | ==5.1.0              | ==5.1.0              |          | flavor_base_deps_python |
| 62 | pysftp                                 | ==0.2.9              | ==0.2.9              |          | flavor_base_deps_python |
| 63 | pysimdjson                             | ==6.0.2              | ==6.0.2              |          | flavor_base_deps_python |
| 64 | pysmbc                                 | ==1.0.25.1           | ==1.0.25.1           |          | flavor_base_deps_python |
| 65 | python-ldap                            | ==3.4.4              | ==3.4.4              |          | flavor_base_deps_python |
| 66 | pytz                                   | ==2024.1             | ==2024.1             |          | flavor_base_deps_python |
| 67 | pyyaml                                 | ==6.0.1              | ==6.0.1              |          | flavor_base_deps_python |
| 68 | redis                                  | ==5.0.4              | ==5.0.4              |          | flavor_base_deps_python |
| 69 | requests                               | ==2.32.4             | ==2.32.4             |          | flavor_base_deps_python |
| 70 | roman                                  | ==4.2                | ==4.2                |          | flavor_base_deps_python |
| 71 | sagemaker                              | ==2.218.1            | ==2.218.1            |          | flavor_base_deps_python |
| 72 | scikit-learn                           | ==1.4.2              | ==1.4.2              |          | flavor_base_deps_python |
| 73 | scipy                                  | ==1.13.0             | ==1.13.0             |          | flavor_base_deps_python |
| 74 | simplejson                             | ==3.19.2             | ==3.19.2             |          | flavor_base_deps_python |
| 75 | ujson                                  | ==5.9.0              | ==5.9.0              |          | flavor_base_deps_python |
| 76 | numpy                                  | ==1.26.4             | ==1.26.4             |          | language_deps           |
| 77 | pandas                                 | ==2.2.3              | ==2.2.3              |          | language_deps           |
| 78 | pyarrow                                | ==16.0.0             | ==16.0.0             |          | language_deps           |

## R packages

|    | Package       | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step         |
|---:|:--------------|:--------------------|:--------------------|:---------|:-------------------|
|  0 | nloptr        | 2.0.3               | 2.2.1               | UPDATED  | flavor_base_deps_r |
|  1 | BradleyTerry2 | 1.1-2               | 1.1-2               |          | flavor_base_deps_r |
|  2 | Formula       | 1.2-5               | 1.2-5               |          | flavor_base_deps_r |
|  3 | RCurl         | 1.98-1.14           | 1.98-1.14           |          | flavor_base_deps_r |
|  4 | RODBC         | 1.3-23              | 1.3-23              |          | flavor_base_deps_r |
|  5 | Rcpp          | 1.0.12              | 1.0.12              |          | flavor_base_deps_r |
|  6 | SparseM       | 1.81                | 1.81                |          | flavor_base_deps_r |
|  7 | XML           | 3.99-0.16.1         | 3.99-0.16.1         |          | flavor_base_deps_r |
|  8 | acepack       | 1.4.2               | 1.4.2               |          | flavor_base_deps_r |
|  9 | brglm         | 0.7.2               | 0.7.2               |          | flavor_base_deps_r |
| 10 | caret         | 6.0-94              | 6.0-94              |          | flavor_base_deps_r |
| 11 | caretEnsemble | 2.0.3               | 2.0.3               |          | flavor_base_deps_r |
| 12 | chron         | 2.3-61              | 2.3-61              |          | flavor_base_deps_r |
| 13 | data.table    | 1.17.4              | 1.17.4              |          | flavor_base_deps_r |
| 14 | digest        | 0.6.37              | 0.6.37              |          | flavor_base_deps_r |
| 15 | dplyr         | 1.2.0               | 1.2.0               |          | flavor_base_deps_r |
| 16 | e1071         | 1.7-14              | 1.7-14              |          | flavor_base_deps_r |
| 17 | fastcluster   | 1.2.6               | 1.2.6               |          | flavor_base_deps_r |
| 18 | flashClust    | 1.01-2              | 1.01-2              |          | flavor_base_deps_r |
| 19 | foreach       | 1.5.2               | 1.5.2               |          | flavor_base_deps_r |
| 20 | gbm           | 2.1.9               | 2.1.9               |          | flavor_base_deps_r |
| 21 | glue          | 1.7.0               | 1.7.0               |          | flavor_base_deps_r |
| 22 | gtools        | 3.9.5               | 3.9.5               |          | flavor_base_deps_r |
| 23 | htmltools     | 0.5.8.1             | 0.5.8.1             |          | flavor_base_deps_r |
| 24 | httr          | 1.4.7               | 1.4.7               |          | flavor_base_deps_r |
| 25 | iterators     | 1.0.14              | 1.0.14              |          | flavor_base_deps_r |
| 26 | jsonlite      | 1.8.8               | 1.8.8               |          | flavor_base_deps_r |
| 27 | lme4          | 1.1-35.3            | 1.1-35.3            |          | flavor_base_deps_r |
| 28 | magrittr      | 2.0.4               | 2.0.4               |          | flavor_base_deps_r |
| 29 | minqa         | 1.2.6               | 1.2.6               |          | flavor_base_deps_r |
| 30 | oysteR        | 0.1.1               | 0.1.1               |          | flavor_base_deps_r |
| 31 | plyr          | 1.8.9               | 1.8.9               |          | flavor_base_deps_r |
| 32 | profileModel  | 0.6.1               | 0.6.1               |          | flavor_base_deps_r |
| 33 | proto         | 1.0.0               | 1.0.0               |          | flavor_base_deps_r |
| 34 | purrr         | 1.0.2               | 1.0.2               |          | flavor_base_deps_r |
| 35 | randomForest  | 4.7-1.2             | 4.7-1.2             |          | flavor_base_deps_r |
| 36 | redux         | 1.1.4               | 1.1.4               |          | flavor_base_deps_r |
| 37 | reshape2      | 1.4.4               | 1.4.4               |          | flavor_base_deps_r |
| 38 | rjson         | 0.2.21              | 0.2.21              |          | flavor_base_deps_r |
| 39 | scales        | 1.4.0               | 1.4.0               |          | flavor_base_deps_r |
| 40 | stringr       | 1.5.1               | 1.5.1               |          | flavor_base_deps_r |
| 41 | tibble        | 3.2.1               | 3.2.1               |          | flavor_base_deps_r |
| 42 | tidyr         | 1.3.1               | 1.3.1               |          | flavor_base_deps_r |
| 43 | yaml          | 2.3.8               | 2.3.8               |          | flavor_base_deps_r |