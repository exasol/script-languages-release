# Public packages comparison between flavor "Standard Exasol All Python 3.10" in 12.0.2 and flavor "Standard Exasol All Python 3.10" in 12.0.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 12.0.1       | Version in 12.0.2       | Status   | Build-Step       |
|---:|:---------------------|:------------------------|:------------------------|:---------|:-----------------|
|  0 | git                  | 1:2.34.1-1ubuntu*       | 1:2.34.1-1ubuntu*       |          | flavor_base_deps |
|  1 | ldap-utils           | 2.5.20+dfsg-0ubuntu*    | 2.5.20+dfsg-0ubuntu*    |          | flavor_base_deps |
|  2 | libcurl4-openssl-dev | 7.81.0-1ubuntu*         | 7.81.0-1ubuntu*         |          | flavor_base_deps |
|  3 | libgomp1             | 12.3.0-1ubuntu*         | 12.3.0-1ubuntu*         |          | flavor_base_deps |
|  4 | libldap2-dev         | 2.5.20+dfsg-0ubuntu*    | 2.5.20+dfsg-0ubuntu*    |          | flavor_base_deps |
|  5 | libleveldb-dev       | 1.23-3build1            | 1.23-3build1            |          | flavor_base_deps |
|  6 | libsasl2-dev         | 2.1.27+dfsg2-3ubuntu*   | 2.1.27+dfsg2-3ubuntu*   |          | flavor_base_deps |
|  7 | libsmbclient         | 2:4.15.13+dfsg-0ubuntu* | 2:4.15.13+dfsg-0ubuntu* |          | flavor_base_deps |
|  8 | libsmbclient-dev     | 2:4.15.13+dfsg-0ubuntu* | 2:4.15.13+dfsg-0ubuntu* |          | flavor_base_deps |
|  9 | openssl              | 3.0.2-0ubuntu*          | 3.0.2-0ubuntu*          |          | flavor_base_deps |
| 10 | slapd                | 2.5.20+dfsg-0ubuntu*    | 2.5.20+dfsg-0ubuntu*    |          | flavor_base_deps |
| 11 | smbclient            | 2:4.15.13+dfsg-0ubuntu* | 2:4.15.13+dfsg-0ubuntu* |          | flavor_base_deps |
| 12 | tzdata               | 2026*                   | 2026*                   |          | flavor_base_deps |
| 13 | unzip                | 6.0-26ubuntu*           | 6.0-26ubuntu*           |          | flavor_base_deps |
| 14 | ca-certificates      | *                       | *                       |          | language_deps    |
| 15 | chrpath              | 0.16-2                  | 0.16-2                  |          | language_deps    |
| 16 | curl                 | 7.81.0-1ubuntu*         | 7.81.0-1ubuntu*         |          | language_deps    |
| 17 | python3-distutils    | 3.10.8*                 | 3.10.8*                 |          | language_deps    |
| 18 | python3.10-dev       | 3.10.12*                | 3.10.12*                |          | language_deps    |
| 19 | coreutils            | 8.32-4.1ubuntu*         | 8.32-4.1ubuntu*         |          | udfclient_deps   |
| 20 | libnss-db            | 2.2.3pre1-6ubuntu*      | 2.2.3pre1-6ubuntu*      |          | udfclient_deps   |
| 21 | libprotobuf-dev      | 3.12.4-1ubuntu*         | 3.12.4-1ubuntu*         |          | udfclient_deps   |
| 22 | libssl-dev           | 3.0.2-0ubuntu*          | 3.0.2-0ubuntu*          |          | udfclient_deps   |
| 23 | libzmq3-dev          | 4.3.4-2                 | 4.3.4-2                 |          | udfclient_deps   |
| 24 | locales              | 2.35-0ubuntu*           | 2.35-0ubuntu*           |          | udfclient_deps   |

## Pip packages

|    | Package                                | Version in 12.0.1    | Version in 12.0.2    | Status   | Build-Step       |
|---:|:---------------------------------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | awscrt                                 | ==0.36.1             | ==0.36.1             |          | flavor_base_deps |
|  1 | azure-batch                            | ==15.1.0             | ==15.1.0             |          | flavor_base_deps |
|  2 | azure-cosmos                           | ==4.16.3             | ==4.16.3             |          | flavor_base_deps |
|  3 | azure-eventgrid                        | ==4.22.1             | ==4.22.1             |          | flavor_base_deps |
|  4 | azure-eventhub                         | ==5.15.1             | ==5.15.1             |          | flavor_base_deps |
|  5 | azure-eventhub-checkpointstoreblob     | ==1.2.0              | ==1.2.0              |          | flavor_base_deps |
|  6 | azure-eventhub-checkpointstoreblob-aio | ==1.2.0              | ==1.2.0              |          | flavor_base_deps |
|  7 | azure-identity                         | ==1.25.3             | ==1.25.3             |          | flavor_base_deps |
|  8 | azure-keyvault                         | ==4.2.0              | ==4.2.0              |          | flavor_base_deps |
|  9 | azure-keyvault-certificates            | ==4.11.1             | ==4.11.1             |          | flavor_base_deps |
| 10 | azure-keyvault-keys                    | ==4.11.1             | ==4.11.1             |          | flavor_base_deps |
| 11 | azure-keyvault-secrets                 | ==4.11.0             | ==4.11.0             |          | flavor_base_deps |
| 12 | azure-kusto-data                       | ==6.0.4              | ==6.0.4              |          | flavor_base_deps |
| 13 | azure-loganalytics                     | ==0.1.1              | ==0.1.1              |          | flavor_base_deps |
| 14 | azure-servicebus                       | ==7.14.3             | ==7.14.3             |          | flavor_base_deps |
| 15 | azure-storage-blob                     | ==12.30.0            | ==12.30.0            |          | flavor_base_deps |
| 16 | azure-storage-file-datalake            | ==12.25.0            | ==12.25.0            |          | flavor_base_deps |
| 17 | azure-storage-file-share               | ==12.26.0            | ==12.26.0            |          | flavor_base_deps |
| 18 | azure-storage-queue                    | ==12.17.0            | ==12.17.0            |          | flavor_base_deps |
| 19 | bitarray                               | ==3.10.1             | ==3.10.1             |          | flavor_base_deps |
| 20 | bitsets                                | ==0.9.1              | ==0.9.1              |          | flavor_base_deps |
| 21 | boto3                                  | ==1.43.68            | ==1.43.68            |          | flavor_base_deps |
| 22 | cffi                                   | ==2.1.1              | ==2.1.1              |          | flavor_base_deps |
| 23 | cryptography                           | ==50.0.0             | ==50.0.0             |          | flavor_base_deps |
| 24 | cython                                 | ==3.2.9              | ==3.2.9              |          | flavor_base_deps |
| 25 | debugpy                                | ==1.8.21             | ==1.8.21             |          | flavor_base_deps |
| 26 | docutils                               | ==0.23               | ==0.23               |          | flavor_base_deps |
| 27 | exasol-bucketfs                        | ==2.3.0              | ==2.3.0              |          | flavor_base_deps |
| 28 | exasol-db-api                          | No version specified | No version specified |          | flavor_base_deps |
| 29 | google-cloud-asset                     | ==4.4.0              | ==4.4.0              |          | flavor_base_deps |
| 30 | google-cloud-bigquery                  | ==3.43.0             | ==3.43.0             |          | flavor_base_deps |
| 31 | google-cloud-bigquery-storage          | ==2.40.0             | ==2.40.0             |          | flavor_base_deps |
| 32 | google-cloud-bigtable                  | ==2.41.0             | ==2.41.0             |          | flavor_base_deps |
| 33 | google-cloud-containeranalysis         | ==2.22.1             | ==2.22.1             |          | flavor_base_deps |
| 34 | google-cloud-datacatalog               | ==3.31.0             | ==3.31.0             |          | flavor_base_deps |
| 35 | google-cloud-datastore                 | ==2.26.0             | ==2.26.0             |          | flavor_base_deps |
| 36 | google-cloud-firestore                 | ==2.28.1             | ==2.28.1             |          | flavor_base_deps |
| 37 | google-cloud-kms                       | ==3.16.0             | ==3.16.0             |          | flavor_base_deps |
| 38 | google-cloud-logging                   | ==3.16.2             | ==3.16.2             |          | flavor_base_deps |
| 39 | google-cloud-monitoring                | ==2.31.0             | ==2.31.0             |          | flavor_base_deps |
| 40 | google-cloud-ndb                       | ==2.5.1              | ==2.5.1              |          | flavor_base_deps |
| 41 | google-cloud-pubsub                    | ==2.39.1             | ==2.39.1             |          | flavor_base_deps |
| 42 | google-cloud-spanner                   | ==3.69.1             | ==3.69.1             |          | flavor_base_deps |
| 43 | google-cloud-storage                   | ==3.13.1             | ==3.13.1             |          | flavor_base_deps |
| 44 | google-cloud-trace                     | ==1.20.0             | ==1.20.0             |          | flavor_base_deps |
| 45 | h2                                     | ==4.4.1              | ==4.4.1              |          | flavor_base_deps |
| 46 | jinja2                                 | ==3.1.6              | ==3.1.6              |          | flavor_base_deps |
| 47 | lxml                                   | ==6.1.1              | ==6.1.1              |          | flavor_base_deps |
| 48 | martian                                | ==2.1                | ==2.1                |          | flavor_base_deps |
| 49 | numba                                  | ==0.66.0             | ==0.66.0             |          | flavor_base_deps |
| 50 | paramiko                               | ==5.0.0              | ==5.0.0              |          | flavor_base_deps |
| 51 | plyvel                                 | ==1.5.1              | ==1.5.1              |          | flavor_base_deps |
| 52 | portalocker                            | ==4.1.0              | ==4.1.0              |          | flavor_base_deps |
| 53 | protobuf                               | ==6.33.6             | ==6.33.6             |          | flavor_base_deps |
| 54 | pyOpenSSL                              | ==26.4.0             | ==26.4.0             |          | flavor_base_deps |
| 55 | pybase64                               | ==1.5.0              | ==1.5.0              |          | flavor_base_deps |
| 56 | pybloomfiltermmap3                     | ==0.6.3              | ==0.6.3              |          | flavor_base_deps |
| 57 | pycurl                                 | ==7.47.0             | ==7.47.0             |          | flavor_base_deps |
| 58 | pyexasol                               | ==2.4.1              | ==2.4.1              |          | flavor_base_deps |
| 59 | pyftpdlib                              | ==2.2.0              | ==2.2.0              |          | flavor_base_deps |
| 60 | pyodbc                                 | ==5.3.0              | ==5.3.0              |          | flavor_base_deps |
| 61 | pysimdjson                             | ==7.0.2              | ==7.0.2              |          | flavor_base_deps |
| 62 | pysmbc                                 | ==1.0.25.1           | ==1.0.25.1           |          | flavor_base_deps |
| 63 | python-ldap                            | ==3.4.7              | ==3.4.7              |          | flavor_base_deps |
| 64 | pytz                                   | ==2026.3.post1       | ==2026.3.post1       |          | flavor_base_deps |
| 65 | pyyaml                                 | ==6.0.3              | ==6.0.3              |          | flavor_base_deps |
| 66 | redis                                  | ==7.4.1              | ==7.4.1              |          | flavor_base_deps |
| 67 | requests                               | ==2.34.2             | ==2.34.2             |          | flavor_base_deps |
| 68 | roman                                  | ==5.2                | ==5.2                |          | flavor_base_deps |
| 69 | scikit-learn                           | ==1.7.2              | ==1.7.2              |          | flavor_base_deps |
| 70 | scipy                                  | ==1.15.3             | ==1.15.3             |          | flavor_base_deps |
| 71 | simplejson                             | ==4.1.1              | ==4.1.1              |          | flavor_base_deps |
| 72 | sqlglot[c]                             | ==30.24.0            | ==30.24.0            |          | flavor_base_deps |
| 73 | ujson                                  | ==5.13.0             | ==5.13.0             |          | flavor_base_deps |
| 74 | numpy                                  | ==2.2.6              | ==2.2.6              |          | language_deps    |
| 75 | pandas                                 | ==2.3.3              | ==2.3.3              |          | language_deps    |
| 76 | pyarrow                                | ==25.0.1             | ==25.0.1             |          | language_deps    |