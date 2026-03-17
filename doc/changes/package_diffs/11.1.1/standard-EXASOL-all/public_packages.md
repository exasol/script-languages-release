# Public packages comparison between flavor "Standard Exasol All" in 11.1.1 and flavor "Standard Exasol All" in 11.1.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package                 | Version in 11.1.0            | Version in 11.1.1            | Status   | Build-Step           |
|---:|:------------------------|:-----------------------------|:-----------------------------|:---------|:---------------------|
|  0 | apt-transport-https     | 2.4.14                       | 2.4.14                       |          | flavor_base_deps_apt |
|  1 | build-essential         | 12.9ubuntu3                  | 12.9ubuntu3                  |          | flavor_base_deps_apt |
|  2 | cmake                   | 3.22.1-1ubuntu1.22.04.2      | 3.22.1-1ubuntu1.22.04.2      |          | flavor_base_deps_apt |
|  3 | git                     | 1:2.34.1-1ubuntu1.17         | 1:2.34.1-1ubuntu1.17         |          | flavor_base_deps_apt |
|  4 | ldap-utils              | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu0.22.04.1 |          | flavor_base_deps_apt |
|  5 | libcurl4-openssl-dev    | 7.81.0-1ubuntu1.23           | 7.81.0-1ubuntu1.23           |          | flavor_base_deps_apt |
|  6 | libhiredis-dev          | 0.14.1-2                     | 0.14.1-2                     |          | flavor_base_deps_apt |
|  7 | libldap2-dev            | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu0.22.04.1 |          | flavor_base_deps_apt |
|  8 | libldb2                 | 2:2.4.4-0ubuntu0.22.04.2     | 2:2.4.4-0ubuntu0.22.04.2     |          | flavor_base_deps_apt |
|  9 | libleveldb-dev          | 1.23-3build1                 | 1.23-3build1                 |          | flavor_base_deps_apt |
| 10 | libleveldb1d            | 1.23-3build1                 | 1.23-3build1                 |          | flavor_base_deps_apt |
| 11 | libsasl2-dev            | 2.1.27+dfsg2-3ubuntu1.2      | 2.1.27+dfsg2-3ubuntu1.2      |          | flavor_base_deps_apt |
| 12 | libsmbclient            | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu1.10   |          | flavor_base_deps_apt |
| 13 | libsmbclient-dev        | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu1.10   |          | flavor_base_deps_apt |
| 14 | libxml2-dev             | 2.9.13+dfsg-1ubuntu0.11      | 2.9.13+dfsg-1ubuntu0.11      |          | flavor_base_deps_apt |
| 15 | maven                   | 3.6.3-5                      | 3.6.3-5                      |          | flavor_base_deps_apt |
| 16 | openssl                 | 3.0.2-0ubuntu1.21            | 3.0.2-0ubuntu1.21            |          | flavor_base_deps_apt |
| 17 | slapd                   | 2.5.20+dfsg-0ubuntu0.22.04.1 | 2.5.20+dfsg-0ubuntu0.22.04.1 |          | flavor_base_deps_apt |
| 18 | smbclient               | 2:4.15.13+dfsg-0ubuntu1.10   | 2:4.15.13+dfsg-0ubuntu1.10   |          | flavor_base_deps_apt |
| 19 | trivy                   | 0.69.3                       | 0.69.3                       |          | flavor_base_deps_apt |
| 20 | unixodbc-dev            | 2.3.9-5ubuntu0.1             | 2.3.9-5ubuntu0.1             |          | flavor_base_deps_apt |
| 21 | unzip                   | 6.0-26ubuntu3.2              | 6.0-26ubuntu3.2              |          | flavor_base_deps_apt |
| 22 | wget                    | 1.21.2-2ubuntu1.1            | 1.21.2-2ubuntu1.1            |          | flavor_base_deps_apt |
| 23 | ca-certificates         | 20240203~22.04.1             | 20240203~22.04.1             |          | language_deps        |
| 24 | chrpath                 | 0.16-2                       | 0.16-2                       |          | language_deps        |
| 25 | curl                    | 7.81.0-1ubuntu1.23           | 7.81.0-1ubuntu1.23           |          | language_deps        |
| 26 | gnupg                   | 2.2.27-3ubuntu2.5            | 2.2.27-3ubuntu2.5            |          | language_deps        |
| 27 | libexpat1               | 2.4.7-1ubuntu0.7             | 2.4.7-1ubuntu0.7             |          | language_deps        |
| 28 | libexpat1-dev           | 2.4.7-1ubuntu0.7             | 2.4.7-1ubuntu0.7             |          | language_deps        |
| 29 | openjdk-11-jdk-headless | 11.0.30+7-1ubuntu1~22.04     | 11.0.30+7-1ubuntu1~22.04     |          | language_deps        |
| 30 | python3-distutils       | 3.10.8-1~22.04               | 3.10.8-1~22.04               |          | language_deps        |
| 31 | python3.10-dev          | 3.10.12-1~22.04.15           | 3.10.12-1~22.04.15           |          | language_deps        |
| 32 | r-base-core             | 4.5.2-1.2204.0               | 4.5.2-1.2204.0               |          | language_deps        |
| 33 | r-base-dev              | 4.5.2-1.2204.0               | 4.5.2-1.2204.0               |          | language_deps        |
| 34 | coreutils               | 8.32-4.1ubuntu1.2            | 8.32-4.1ubuntu1.2            |          | udfclient_deps       |
| 35 | libnss-db               | 2.2.3pre1-6ubuntu3           | 2.2.3pre1-6ubuntu3           |          | udfclient_deps       |
| 36 | libprotobuf-dev         | 3.12.4-1ubuntu7.22.04.6      | 3.12.4-1ubuntu7.22.04.6      |          | udfclient_deps       |
| 37 | libssl-dev              | 3.0.2-0ubuntu1.21            | 3.0.2-0ubuntu1.21            |          | udfclient_deps       |
| 38 | libzmq3-dev             | 4.3.4-2                      | 4.3.4-2                      |          | udfclient_deps       |
| 39 | locales                 | 2.35-0ubuntu3.13             | 2.35-0ubuntu3.13             |          | udfclient_deps       |

## Pip packages

|    | Package                                | Version in 11.1.0    | Version in 11.1.1    | Status   | Build-Step              |
|---:|:---------------------------------------|:---------------------|:---------------------|:---------|:------------------------|
|  0 | awscrt                                 | ==0.20.9             | ==0.20.9             |          | flavor_base_deps_python |
|  1 | azure-batch                            | ==14.2.0             | ==14.2.0             |          | flavor_base_deps_python |
|  2 | azure-cosmos                           | ==4.6.0              | ==4.6.0              |          | flavor_base_deps_python |
|  3 | azure-eventgrid                        | ==4.19.0             | ==4.19.0             |          | flavor_base_deps_python |
|  4 | azure-eventhub                         | ==5.11.7             | ==5.11.7             |          | flavor_base_deps_python |
|  5 | azure-eventhub-checkpointstoreblob     | ==1.1.4              | ==1.1.4              |          | flavor_base_deps_python |
|  6 | azure-eventhub-checkpointstoreblob-aio | ==1.1.4              | ==1.1.4              |          | flavor_base_deps_python |
|  7 | azure-identity                         | ==1.16.0             | ==1.16.0             |          | flavor_base_deps_python |
|  8 | azure-keyvault                         | ==4.2.0              | ==4.2.0              |          | flavor_base_deps_python |
|  9 | azure-keyvault-certificates            | ==4.8.0              | ==4.8.0              |          | flavor_base_deps_python |
| 10 | azure-keyvault-keys                    | ==4.9.0              | ==4.9.0              |          | flavor_base_deps_python |
| 11 | azure-keyvault-secrets                 | ==4.8.0              | ==4.8.0              |          | flavor_base_deps_python |
| 12 | azure-kusto-data                       | ==4.4.0              | ==4.4.0              |          | flavor_base_deps_python |
| 13 | azure-loganalytics                     | ==0.1.1              | ==0.1.1              |          | flavor_base_deps_python |
| 14 | azure-servicebus                       | ==7.12.1             | ==7.12.1             |          | flavor_base_deps_python |
| 15 | azure-storage-blob                     | ==12.19.1            | ==12.19.1            |          | flavor_base_deps_python |
| 16 | azure-storage-file-datalake            | ==12.14.0            | ==12.14.0            |          | flavor_base_deps_python |
| 17 | azure-storage-file-share               | ==12.15.0            | ==12.15.0            |          | flavor_base_deps_python |
| 18 | azure-storage-queue                    | ==12.9.0             | ==12.9.0             |          | flavor_base_deps_python |
| 19 | bitarray                               | ==2.9.2              | ==2.9.2              |          | flavor_base_deps_python |
| 20 | bitsets                                | ==0.8.4              | ==0.8.4              |          | flavor_base_deps_python |
| 21 | boto3                                  | ==1.34.98            | ==1.34.98            |          | flavor_base_deps_python |
| 22 | cffi                                   | ==1.16.0             | ==1.16.0             |          | flavor_base_deps_python |
| 23 | cryptography                           | ==45.0.7             | ==45.0.7             |          | flavor_base_deps_python |
| 24 | cython                                 | ==3.0.10             | ==3.0.10             |          | flavor_base_deps_python |
| 25 | debugpy                                | ==1.8.1              | ==1.8.1              |          | flavor_base_deps_python |
| 26 | docutils                               | ==0.21.2             | ==0.21.2             |          | flavor_base_deps_python |
| 27 | exasol-bucketfs                        | ==2.0.0              | ==2.0.0              |          | flavor_base_deps_python |
| 28 | exasol-db-api                          | No version specified | No version specified |          | flavor_base_deps_python |
| 29 | google-cloud-asset                     | ==3.26.1             | ==3.26.1             |          | flavor_base_deps_python |
| 30 | google-cloud-bigquery                  | ==3.21.0             | ==3.21.0             |          | flavor_base_deps_python |
| 31 | google-cloud-bigquery-storage          | ==2.25.0             | ==2.25.0             |          | flavor_base_deps_python |
| 32 | google-cloud-bigtable                  | ==2.23.1             | ==2.23.1             |          | flavor_base_deps_python |
| 33 | google-cloud-containeranalysis         | ==2.14.3             | ==2.14.3             |          | flavor_base_deps_python |
| 34 | google-cloud-datacatalog               | ==3.19.0             | ==3.19.0             |          | flavor_base_deps_python |
| 35 | google-cloud-datastore                 | ==2.19.0             | ==2.19.0             |          | flavor_base_deps_python |
| 36 | google-cloud-firestore                 | ==2.16.0             | ==2.16.0             |          | flavor_base_deps_python |
| 37 | google-cloud-kms                       | ==2.21.4             | ==2.21.4             |          | flavor_base_deps_python |
| 38 | google-cloud-logging                   | ==3.10.0             | ==3.10.0             |          | flavor_base_deps_python |
| 39 | google-cloud-monitoring                | ==2.21.0             | ==2.21.0             |          | flavor_base_deps_python |
| 40 | google-cloud-ndb                       | ==2.3.1              | ==2.3.1              |          | flavor_base_deps_python |
| 41 | google-cloud-pubsub                    | ==2.21.1             | ==2.21.1             |          | flavor_base_deps_python |
| 42 | google-cloud-spanner                   | ==3.46.0             | ==3.46.0             |          | flavor_base_deps_python |
| 43 | google-cloud-storage                   | ==2.16.0             | ==2.16.0             |          | flavor_base_deps_python |
| 44 | google-cloud-trace                     | ==1.13.3             | ==1.13.3             |          | flavor_base_deps_python |
| 45 | h2                                     | ==4.1.0              | ==4.1.0              |          | flavor_base_deps_python |
| 46 | jinja2                                 | ==3.1.4              | ==3.1.4              |          | flavor_base_deps_python |
| 47 | lxml                                   | ==5.2.1              | ==5.2.1              |          | flavor_base_deps_python |
| 48 | martian                                | ==2.0.post1          | ==2.0.post1          |          | flavor_base_deps_python |
| 49 | numba                                  | ==0.59.1             | ==0.59.1             |          | flavor_base_deps_python |
| 50 | paramiko                               | ==3.4.0              | ==3.4.0              |          | flavor_base_deps_python |
| 51 | plyvel                                 | ==1.5.1              | ==1.5.1              |          | flavor_base_deps_python |
| 52 | portalocker                            | ==3.1.1              | ==3.1.1              |          | flavor_base_deps_python |
| 53 | protobuf                               | ==4.25.8             | ==4.25.8             |          | flavor_base_deps_python |
| 54 | pyOpenSSL                              | ==25.3.0             | ==25.3.0             |          | flavor_base_deps_python |
| 55 | pybase64                               | ==1.3.2              | ==1.3.2              |          | flavor_base_deps_python |
| 56 | pybloomfiltermmap3                     | ==0.5.7              | ==0.5.7              |          | flavor_base_deps_python |
| 57 | pycurl                                 | ==7.45.3             | ==7.45.3             |          | flavor_base_deps_python |
| 58 | pyexasol                               | ==2.1.0              | ==2.1.0              |          | flavor_base_deps_python |
| 59 | pyftpdlib                              | ==1.5.9              | ==1.5.9              |          | flavor_base_deps_python |
| 60 | pyodbc                                 | ==5.1.0              | ==5.1.0              |          | flavor_base_deps_python |
| 61 | pysftp                                 | ==0.2.9              | ==0.2.9              |          | flavor_base_deps_python |
| 62 | pysimdjson                             | ==6.0.2              | ==6.0.2              |          | flavor_base_deps_python |
| 63 | pysmbc                                 | ==1.0.25.1           | ==1.0.25.1           |          | flavor_base_deps_python |
| 64 | python-ldap                            | ==3.4.4              | ==3.4.4              |          | flavor_base_deps_python |
| 65 | pytz                                   | ==2024.1             | ==2024.1             |          | flavor_base_deps_python |
| 66 | pyyaml                                 | ==6.0.1              | ==6.0.1              |          | flavor_base_deps_python |
| 67 | redis                                  | ==5.0.4              | ==5.0.4              |          | flavor_base_deps_python |
| 68 | requests                               | ==2.32.4             | ==2.32.4             |          | flavor_base_deps_python |
| 69 | roman                                  | ==4.2                | ==4.2                |          | flavor_base_deps_python |
| 70 | sagemaker                              | ==2.218.1            | ==2.218.1            |          | flavor_base_deps_python |
| 71 | scikit-learn                           | ==1.4.2              | ==1.4.2              |          | flavor_base_deps_python |
| 72 | scipy                                  | ==1.13.0             | ==1.13.0             |          | flavor_base_deps_python |
| 73 | simplejson                             | ==3.19.2             | ==3.19.2             |          | flavor_base_deps_python |
| 74 | ujson                                  | ==5.9.0              | ==5.9.0              |          | flavor_base_deps_python |
| 75 | numpy                                  | ==1.26.4             | ==1.26.4             |          | language_deps           |
| 76 | pandas                                 | ==2.2.3              | ==2.2.3              |          | language_deps           |
| 77 | pyarrow                                | ==16.0.0             | ==16.0.0             |          | language_deps           |

## R packages

|    | Package       | Version in 11.1.0   | Version in 11.1.1   | Status   | Build-Step         |
|---:|:--------------|:--------------------|:--------------------|:---------|:-------------------|
|  0 | BradleyTerry2 | 1.1-2               | 1.1-2               |          | flavor_base_deps_r |
|  1 | Formula       | 1.2-5               | 1.2-5               |          | flavor_base_deps_r |
|  2 | RCurl         | 1.98-1.14           | 1.98-1.14           |          | flavor_base_deps_r |
|  3 | RODBC         | 1.3-23              | 1.3-23              |          | flavor_base_deps_r |
|  4 | Rcpp          | 1.0.12              | 1.0.12              |          | flavor_base_deps_r |
|  5 | SparseM       | 1.81                | 1.81                |          | flavor_base_deps_r |
|  6 | XML           | 3.99-0.16.1         | 3.99-0.16.1         |          | flavor_base_deps_r |
|  7 | acepack       | 1.4.2               | 1.4.2               |          | flavor_base_deps_r |
|  8 | brglm         | 0.7.2               | 0.7.2               |          | flavor_base_deps_r |
|  9 | caret         | 6.0-94              | 6.0-94              |          | flavor_base_deps_r |
| 10 | caretEnsemble | 2.0.3               | 2.0.3               |          | flavor_base_deps_r |
| 11 | chron         | 2.3-61              | 2.3-61              |          | flavor_base_deps_r |
| 12 | data.table    | 1.17.4              | 1.17.4              |          | flavor_base_deps_r |
| 13 | digest        | 0.6.37              | 0.6.37              |          | flavor_base_deps_r |
| 14 | dplyr         | 1.2.0               | 1.2.0               |          | flavor_base_deps_r |
| 15 | e1071         | 1.7-14              | 1.7-14              |          | flavor_base_deps_r |
| 16 | fastcluster   | 1.2.6               | 1.2.6               |          | flavor_base_deps_r |
| 17 | flashClust    | 1.01-2              | 1.01-2              |          | flavor_base_deps_r |
| 18 | foreach       | 1.5.2               | 1.5.2               |          | flavor_base_deps_r |
| 19 | gbm           | 2.1.9               | 2.1.9               |          | flavor_base_deps_r |
| 20 | glue          | 1.7.0               | 1.7.0               |          | flavor_base_deps_r |
| 21 | gtools        | 3.9.5               | 3.9.5               |          | flavor_base_deps_r |
| 22 | htmltools     | 0.5.8.1             | 0.5.8.1             |          | flavor_base_deps_r |
| 23 | httr          | 1.4.7               | 1.4.7               |          | flavor_base_deps_r |
| 24 | iterators     | 1.0.14              | 1.0.14              |          | flavor_base_deps_r |
| 25 | jsonlite      | 1.8.8               | 1.8.8               |          | flavor_base_deps_r |
| 26 | lme4          | 1.1-35.3            | 1.1-35.3            |          | flavor_base_deps_r |
| 27 | magrittr      | 2.0.4               | 2.0.4               |          | flavor_base_deps_r |
| 28 | minqa         | 1.2.6               | 1.2.6               |          | flavor_base_deps_r |
| 29 | nloptr        | 2.0.3               | 2.0.3               |          | flavor_base_deps_r |
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