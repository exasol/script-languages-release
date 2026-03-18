# Public packages comparison between flavor "Standard Exasol All Python 3.12" in 11.1.1 and flavor "Standard Exasol All Python 3.12" in 11.1.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.1.0            | Version in 11.1.1            | Status   | Build-Step       |
|---:|:---------------------|:-----------------------------|:-----------------------------|:---------|:-----------------|
|  0 | git                  | 1:2.43.0-1ubuntu7.3          | 1:2.43.0-1ubuntu7.3          |          | flavor_base_deps |
|  1 | ldap-utils           | 2.6.10+dfsg-0ubuntu0.24.04.1 | 2.6.10+dfsg-0ubuntu0.24.04.1 |          | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 8.5.0-2ubuntu10.8            | 8.5.0-2ubuntu10.8            |          | flavor_base_deps |
|  3 | libgomp1             | 14.2.0-4ubuntu2~24.04.1      | 14.2.0-4ubuntu2~24.04.1      |          | flavor_base_deps |
|  4 | libldap2-dev         | 2.6.10+dfsg-0ubuntu0.24.04.1 | 2.6.10+dfsg-0ubuntu0.24.04.1 |          | flavor_base_deps |
|  5 | libleveldb-dev       | 1.23-5build1                 | 1.23-5build1                 |          | flavor_base_deps |
|  6 | libsasl2-dev         | 2.1.28+dfsg1-5ubuntu3.1      | 2.1.28+dfsg1-5ubuntu3.1      |          | flavor_base_deps |
|  7 | libsmbclient-dev     | 2:4.19.5+dfsg-4ubuntu9.4     | 2:4.19.5+dfsg-4ubuntu9.4     |          | flavor_base_deps |
|  8 | openssl              | 3.0.13-0ubuntu3.7            | 3.0.13-0ubuntu3.7            |          | flavor_base_deps |
|  9 | slapd                | 2.6.10+dfsg-0ubuntu0.24.04.1 | 2.6.10+dfsg-0ubuntu0.24.04.1 |          | flavor_base_deps |
| 10 | smbclient            | 2:4.19.5+dfsg-4ubuntu9.4     | 2:4.19.5+dfsg-4ubuntu9.4     |          | flavor_base_deps |
| 11 | tzdata               | 2025b-0ubuntu0.24.04.1       | 2025b-0ubuntu0.24.04.1       |          | flavor_base_deps |
| 12 | unzip                | 6.0-28ubuntu4.1              | 6.0-28ubuntu4.1              |          | flavor_base_deps |
| 13 | ca-certificates      | 20240203                     | 20240203                     |          | language_deps    |
| 14 | chrpath              | 0.16-2build1                 | 0.16-2build1                 |          | language_deps    |
| 15 | curl                 | 8.5.0-2ubuntu10.8            | 8.5.0-2ubuntu10.8            |          | language_deps    |
| 16 | python3.12-dev       | 3.12.3-1ubuntu0.12           | 3.12.3-1ubuntu0.12           |          | language_deps    |
| 17 | adduser              | 3.137ubuntu1                 | 3.137ubuntu1                 |          | udfclient_deps   |
| 18 | coreutils            | 9.4-3ubuntu6.1               | 9.4-3ubuntu6.1               |          | udfclient_deps   |
| 19 | cppzmq-dev           | 4.10.0-1build1               | 4.10.0-1build1               |          | udfclient_deps   |
| 20 | libnss-db            | 2.2.3pre1-9build3            | 2.2.3pre1-9build3            |          | udfclient_deps   |
| 21 | libprotobuf-dev      | 3.21.12-8.2ubuntu0.3         | 3.21.12-8.2ubuntu0.3         |          | udfclient_deps   |
| 22 | libssl-dev           | 3.0.13-0ubuntu3.7            | 3.0.13-0ubuntu3.7            |          | udfclient_deps   |
| 23 | libzmq3-dev          | 4.3.5-1build2                | 4.3.5-1build2                |          | udfclient_deps   |
| 24 | locales              | 2.39-0ubuntu8.7              | 2.39-0ubuntu8.7              |          | udfclient_deps   |

## Pip packages

|    | Package                                | Version in 11.1.0    | Version in 11.1.1    | Status   | Build-Step       |
|---:|:---------------------------------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | awscrt                                 | ==0.28.1             | ==0.28.1             |          | flavor_base_deps |
|  1 | azure-batch                            | ==14.2.0             | ==14.2.0             |          | flavor_base_deps |
|  2 | azure-cosmos                           | ==4.9.0              | ==4.9.0              |          | flavor_base_deps |
|  3 | azure-eventgrid                        | ==4.22.0             | ==4.22.0             |          | flavor_base_deps |
|  4 | azure-eventhub                         | ==5.15.0             | ==5.15.0             |          | flavor_base_deps |
|  5 | azure-eventhub-checkpointstoreblob     | ==1.2.0              | ==1.2.0              |          | flavor_base_deps |
|  6 | azure-eventhub-checkpointstoreblob-aio | ==1.2.0              | ==1.2.0              |          | flavor_base_deps |
|  7 | azure-identity                         | ==1.25.0             | ==1.25.0             |          | flavor_base_deps |
|  8 | azure-keyvault                         | ==4.2.0              | ==4.2.0              |          | flavor_base_deps |
|  9 | azure-keyvault-certificates            | ==4.10.0             | ==4.10.0             |          | flavor_base_deps |
| 10 | azure-keyvault-keys                    | ==4.11.0             | ==4.11.0             |          | flavor_base_deps |
| 11 | azure-keyvault-secrets                 | ==4.10.0             | ==4.10.0             |          | flavor_base_deps |
| 12 | azure-kusto-data                       | ==5.0.5              | ==5.0.5              |          | flavor_base_deps |
| 13 | azure-loganalytics                     | ==0.1.1              | ==0.1.1              |          | flavor_base_deps |
| 14 | azure-servicebus                       | ==7.14.2             | ==7.14.2             |          | flavor_base_deps |
| 15 | azure-storage-blob                     | ==12.26.0            | ==12.26.0            |          | flavor_base_deps |
| 16 | azure-storage-file-datalake            | ==12.21.0            | ==12.21.0            |          | flavor_base_deps |
| 17 | azure-storage-file-share               | ==12.22.0            | ==12.22.0            |          | flavor_base_deps |
| 18 | azure-storage-queue                    | ==12.13.0            | ==12.13.0            |          | flavor_base_deps |
| 19 | bitarray                               | ==3.7.1              | ==3.7.1              |          | flavor_base_deps |
| 20 | bitsets                                | ==0.8.4              | ==0.8.4              |          | flavor_base_deps |
| 21 | boto3                                  | ==1.40.37            | ==1.40.37            |          | flavor_base_deps |
| 22 | cffi                                   | ==2.0.0              | ==2.0.0              |          | flavor_base_deps |
| 23 | cryptography                           | ==46.0.1             | ==46.0.1             |          | flavor_base_deps |
| 24 | cython                                 | ==3.1.4              | ==3.1.4              |          | flavor_base_deps |
| 25 | debugpy                                | ==1.8.17             | ==1.8.17             |          | flavor_base_deps |
| 26 | docutils                               | ==0.22.2             | ==0.22.2             |          | flavor_base_deps |
| 27 | exasol-bucketfs                        | ==2.2.0              | ==2.2.0              |          | flavor_base_deps |
| 28 | exasol-db-api                          | No version specified | No version specified |          | flavor_base_deps |
| 29 | google-cloud-asset                     | ==3.30.1             | ==3.30.1             |          | flavor_base_deps |
| 30 | google-cloud-bigquery                  | ==3.38.0             | ==3.38.0             |          | flavor_base_deps |
| 31 | google-cloud-bigquery-storage          | ==2.33.1             | ==2.33.1             |          | flavor_base_deps |
| 32 | google-cloud-bigtable                  | ==2.32.0             | ==2.32.0             |          | flavor_base_deps |
| 33 | google-cloud-containeranalysis         | ==2.18.1             | ==2.18.1             |          | flavor_base_deps |
| 34 | google-cloud-datacatalog               | ==3.27.1             | ==3.27.1             |          | flavor_base_deps |
| 35 | google-cloud-datastore                 | ==2.21.0             | ==2.21.0             |          | flavor_base_deps |
| 36 | google-cloud-firestore                 | ==2.21.0             | ==2.21.0             |          | flavor_base_deps |
| 37 | google-cloud-kms                       | ==3.6.0              | ==3.6.0              |          | flavor_base_deps |
| 38 | google-cloud-logging                   | ==3.12.1             | ==3.12.1             |          | flavor_base_deps |
| 39 | google-cloud-monitoring                | ==2.27.2             | ==2.27.2             |          | flavor_base_deps |
| 40 | google-cloud-ndb                       | ==2.3.4              | ==2.3.4              |          | flavor_base_deps |
| 41 | google-cloud-pubsub                    | ==2.31.1             | ==2.31.1             |          | flavor_base_deps |
| 42 | google-cloud-spanner                   | ==3.58.0             | ==3.58.0             |          | flavor_base_deps |
| 43 | google-cloud-storage                   | ==3.4.0              | ==3.4.0              |          | flavor_base_deps |
| 44 | google-cloud-trace                     | ==1.16.2             | ==1.16.2             |          | flavor_base_deps |
| 45 | h2                                     | ==4.3.0              | ==4.3.0              |          | flavor_base_deps |
| 46 | jinja2                                 | ==3.1.6              | ==3.1.6              |          | flavor_base_deps |
| 47 | lxml                                   | ==6.0.2              | ==6.0.2              |          | flavor_base_deps |
| 48 | martian                                | ==2.1                | ==2.1                |          | flavor_base_deps |
| 49 | numba                                  | ==0.62.0             | ==0.62.0             |          | flavor_base_deps |
| 50 | paramiko                               | ==3.4.0              | ==3.4.0              |          | flavor_base_deps |
| 51 | plyvel                                 | ==1.5.1              | ==1.5.1              |          | flavor_base_deps |
| 52 | portalocker                            | ==3.2.0              | ==3.2.0              |          | flavor_base_deps |
| 53 | protobuf                               | ==6.31.1             | ==6.31.1             |          | flavor_base_deps |
| 54 | pyOpenSSL                              | ==25.3.0             | ==25.3.0             |          | flavor_base_deps |
| 55 | pybase64                               | ==1.4.2              | ==1.4.2              |          | flavor_base_deps |
| 56 | pybloomfiltermmap3                     | ==0.6.3              | ==0.6.3              |          | flavor_base_deps |
| 57 | pycurl                                 | ==7.45.6             | ==7.45.6             |          | flavor_base_deps |
| 58 | pyexasol                               | ==2.1.0              | ==2.1.0              |          | flavor_base_deps |
| 59 | pyftpdlib                              | ==2.0.1              | ==2.0.1              |          | flavor_base_deps |
| 60 | pyodbc                                 | ==5.2.0              | ==5.2.0              |          | flavor_base_deps |
| 61 | pysftp                                 | ==0.2.9              | ==0.2.9              |          | flavor_base_deps |
| 62 | pysimdjson                             | ==7.0.2              | ==7.0.2              |          | flavor_base_deps |
| 63 | pysmbc                                 | ==1.0.25.1           | ==1.0.25.1           |          | flavor_base_deps |
| 64 | python-ldap                            | ==3.4.4              | ==3.4.4              |          | flavor_base_deps |
| 65 | pytz                                   | ==2025.2             | ==2025.2             |          | flavor_base_deps |
| 66 | pyyaml                                 | ==6.0.2              | ==6.0.2              |          | flavor_base_deps |
| 67 | redis                                  | ==6.4.0              | ==6.4.0              |          | flavor_base_deps |
| 68 | requests                               | ==2.32.5             | ==2.32.5             |          | flavor_base_deps |
| 69 | roman                                  | ==5.1                | ==5.1                |          | flavor_base_deps |
| 70 | sagemaker                              | ==2.251.1            | ==2.251.1            |          | flavor_base_deps |
| 71 | scikit-learn                           | ==1.7.2              | ==1.7.2              |          | flavor_base_deps |
| 72 | scipy                                  | ==1.16.2             | ==1.16.2             |          | flavor_base_deps |
| 73 | simplejson                             | ==3.20.1             | ==3.20.1             |          | flavor_base_deps |
| 74 | sqlglot[rs]                            | ==29.0.1             | ==29.0.1             |          | flavor_base_deps |
| 75 | ujson                                  | ==5.11.0             | ==5.11.0             |          | flavor_base_deps |
| 76 | numpy                                  | ==1.26.4             | ==1.26.4             |          | language_deps    |
| 77 | pandas                                 | ==2.3.2              | ==2.3.2              |          | language_deps    |
| 78 | pyarrow                                | ==21.0.0             | ==21.0.0             |          | language_deps    |