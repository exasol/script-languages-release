# Public packages comparison between flavor "Standard Exasol All Python 3.10" in 12.0.0 and flavor "Standard Exasol All Python 3.10" in 11.3.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package              | Version in 11.3.0       | Version in 12.0.0       | Status   | Build-Step       |
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
| 14 | ca-certificates      | 20260601~22.04.1        | 20260601~22.04.1        |          | language_deps    |
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

|    | Package                                | Version in 11.3.0    | Version in 12.0.0    | Status   | Build-Step       |
|---:|:---------------------------------------|:---------------------|:---------------------|:---------|:-----------------|
|  0 | cryptography                           | ==45.0.7             | ==50.0.0             | UPDATED  | flavor_base_deps |
|  1 | exasol-bucketfs                        | ==2.2.0              | ==2.3.0              | UPDATED  | flavor_base_deps |
|  2 | lxml                                   | ==5.2.1              | ==5.4.0              | UPDATED  | flavor_base_deps |
|  3 | protobuf                               | ==4.25.8             | ==7.35.1             | UPDATED  | flavor_base_deps |
|  4 | pyOpenSSL                              | ==25.3.0             | ==26.4.0             | UPDATED  | flavor_base_deps |
|  5 | pyexasol                               | ==2.2.2              | ==2.3.1              | UPDATED  | flavor_base_deps |
|  6 | sagemaker                              | ==2.218.1            | ==2.257.5            | UPDATED  | flavor_base_deps |
|  7 | sqlglot[rs]                            | ==30.13.0            | ==30.15.0            | UPDATED  | flavor_base_deps |
|  8 | pyarrow                                | ==16.0.0             | ==25.0.0             | UPDATED  | language_deps    |
|  9 | awscrt                                 | ==0.20.9             | ==0.20.9             |          | flavor_base_deps |
| 10 | azure-batch                            | ==14.2.0             | ==14.2.0             |          | flavor_base_deps |
| 11 | azure-cosmos                           | ==4.6.0              | ==4.6.0              |          | flavor_base_deps |
| 12 | azure-eventgrid                        | ==4.19.0             | ==4.19.0             |          | flavor_base_deps |
| 13 | azure-eventhub                         | ==5.11.7             | ==5.11.7             |          | flavor_base_deps |
| 14 | azure-eventhub-checkpointstoreblob     | ==1.1.4              | ==1.1.4              |          | flavor_base_deps |
| 15 | azure-eventhub-checkpointstoreblob-aio | ==1.1.4              | ==1.1.4              |          | flavor_base_deps |
| 16 | azure-identity                         | ==1.16.0             | ==1.16.0             |          | flavor_base_deps |
| 17 | azure-keyvault                         | ==4.2.0              | ==4.2.0              |          | flavor_base_deps |
| 18 | azure-keyvault-certificates            | ==4.8.0              | ==4.8.0              |          | flavor_base_deps |
| 19 | azure-keyvault-keys                    | ==4.9.0              | ==4.9.0              |          | flavor_base_deps |
| 20 | azure-keyvault-secrets                 | ==4.8.0              | ==4.8.0              |          | flavor_base_deps |
| 21 | azure-kusto-data                       | ==4.4.0              | ==4.4.0              |          | flavor_base_deps |
| 22 | azure-loganalytics                     | ==0.1.1              | ==0.1.1              |          | flavor_base_deps |
| 23 | azure-servicebus                       | ==7.12.1             | ==7.12.1             |          | flavor_base_deps |
| 24 | azure-storage-blob                     | ==12.19.1            | ==12.19.1            |          | flavor_base_deps |
| 25 | azure-storage-file-datalake            | ==12.14.0            | ==12.14.0            |          | flavor_base_deps |
| 26 | azure-storage-file-share               | ==12.15.0            | ==12.15.0            |          | flavor_base_deps |
| 27 | azure-storage-queue                    | ==12.9.0             | ==12.9.0             |          | flavor_base_deps |
| 28 | bitarray                               | ==2.9.2              | ==2.9.2              |          | flavor_base_deps |
| 29 | bitsets                                | ==0.8.4              | ==0.8.4              |          | flavor_base_deps |
| 30 | boto3                                  | ==1.34.98            | ==1.34.98            |          | flavor_base_deps |
| 31 | cffi                                   | ==1.16.0             | ==1.16.0             |          | flavor_base_deps |
| 32 | cython                                 | ==3.0.10             | ==3.0.10             |          | flavor_base_deps |
| 33 | debugpy                                | ==1.8.1              | ==1.8.1              |          | flavor_base_deps |
| 34 | docutils                               | ==0.21.2             | ==0.21.2             |          | flavor_base_deps |
| 35 | exasol-db-api                          | No version specified | No version specified |          | flavor_base_deps |
| 36 | google-cloud-asset                     | ==3.26.1             | ==3.26.1             |          | flavor_base_deps |
| 37 | google-cloud-bigquery                  | ==3.21.0             | ==3.21.0             |          | flavor_base_deps |
| 38 | google-cloud-bigquery-storage          | ==2.25.0             | ==2.25.0             |          | flavor_base_deps |
| 39 | google-cloud-bigtable                  | ==2.23.1             | ==2.23.1             |          | flavor_base_deps |
| 40 | google-cloud-containeranalysis         | ==2.14.3             | ==2.14.3             |          | flavor_base_deps |
| 41 | google-cloud-datacatalog               | ==3.19.0             | ==3.19.0             |          | flavor_base_deps |
| 42 | google-cloud-datastore                 | ==2.19.0             | ==2.19.0             |          | flavor_base_deps |
| 43 | google-cloud-firestore                 | ==2.16.0             | ==2.16.0             |          | flavor_base_deps |
| 44 | google-cloud-kms                       | ==2.21.4             | ==2.21.4             |          | flavor_base_deps |
| 45 | google-cloud-logging                   | ==3.10.0             | ==3.10.0             |          | flavor_base_deps |
| 46 | google-cloud-monitoring                | ==2.21.0             | ==2.21.0             |          | flavor_base_deps |
| 47 | google-cloud-ndb                       | ==2.3.1              | ==2.3.1              |          | flavor_base_deps |
| 48 | google-cloud-pubsub                    | ==2.21.1             | ==2.21.1             |          | flavor_base_deps |
| 49 | google-cloud-spanner                   | ==3.46.0             | ==3.46.0             |          | flavor_base_deps |
| 50 | google-cloud-storage                   | ==2.16.0             | ==2.16.0             |          | flavor_base_deps |
| 51 | google-cloud-trace                     | ==1.13.3             | ==1.13.3             |          | flavor_base_deps |
| 52 | h2                                     | ==4.1.0              | ==4.1.0              |          | flavor_base_deps |
| 53 | jinja2                                 | ==3.1.4              | ==3.1.4              |          | flavor_base_deps |
| 54 | martian                                | ==2.0.post1          | ==2.0.post1          |          | flavor_base_deps |
| 55 | numba                                  | ==0.59.1             | ==0.59.1             |          | flavor_base_deps |
| 56 | paramiko                               | ==3.4.0              | ==3.4.0              |          | flavor_base_deps |
| 57 | plyvel                                 | ==1.5.1              | ==1.5.1              |          | flavor_base_deps |
| 58 | portalocker                            | ==3.1.1              | ==3.1.1              |          | flavor_base_deps |
| 59 | pybase64                               | ==1.3.2              | ==1.3.2              |          | flavor_base_deps |
| 60 | pybloomfiltermmap3                     | ==0.5.7              | ==0.5.7              |          | flavor_base_deps |
| 61 | pycurl                                 | ==7.45.3             | ==7.45.3             |          | flavor_base_deps |
| 62 | pyftpdlib                              | ==1.5.9              | ==1.5.9              |          | flavor_base_deps |
| 63 | pyodbc                                 | ==5.1.0              | ==5.1.0              |          | flavor_base_deps |
| 64 | pysftp                                 | ==0.2.9              | ==0.2.9              |          | flavor_base_deps |
| 65 | pysimdjson                             | ==6.0.2              | ==6.0.2              |          | flavor_base_deps |
| 66 | pysmbc                                 | ==1.0.25.1           | ==1.0.25.1           |          | flavor_base_deps |
| 67 | python-ldap                            | ==3.4.4              | ==3.4.4              |          | flavor_base_deps |
| 68 | pytz                                   | ==2024.1             | ==2024.1             |          | flavor_base_deps |
| 69 | pyyaml                                 | ==6.0.1              | ==6.0.1              |          | flavor_base_deps |
| 70 | redis                                  | ==5.0.4              | ==5.0.4              |          | flavor_base_deps |
| 71 | requests                               | ==2.32.4             | ==2.32.4             |          | flavor_base_deps |
| 72 | roman                                  | ==4.2                | ==4.2                |          | flavor_base_deps |
| 73 | scikit-learn                           | ==1.4.2              | ==1.4.2              |          | flavor_base_deps |
| 74 | scipy                                  | ==1.13.0             | ==1.13.0             |          | flavor_base_deps |
| 75 | simplejson                             | ==3.19.2             | ==3.19.2             |          | flavor_base_deps |
| 76 | ujson                                  | ==5.9.0              | ==5.9.0              |          | flavor_base_deps |
| 77 | numpy                                  | ==1.26.4             | ==1.26.4             |          | language_deps    |
| 78 | pandas                                 | ==2.2.3              | ==2.2.3              |          | language_deps    |