# Internal packages comparison between flavor "Template Exasol 8 Python 3.12 Cuda Conda" in 11.4.0 and flavor "Template Exasol 8 Python 3.12 Cuda Conda" in 11.3.0

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package   | Version in 11.3.0         | Version in 11.4.0         | Status   | Build-Step     |
|---:|:----------|:--------------------------|:--------------------------|:---------|:---------------|
|  0 | binutils  | 2.42-4ubuntu*             | 2.42-4ubuntu*             |          | base_test_deps |
|  1 | gdb       | 15.0.50.20240403-0ubuntu* | 15.0.50.20240403-0ubuntu* |          | base_test_deps |
|  2 | gdbserver | 15.0.50.20240403-0ubuntu* | 15.0.50.20240403-0ubuntu* |          | base_test_deps |
|  3 | patchelf  | 0.18.0-1.1build1          | 0.18.0-1.1build1          |          | base_test_deps |
|  4 | strace    | 6.8-0ubuntu*              | 6.8-0ubuntu*              |          | base_test_deps |
|  5 | valgrind  | 1:3.22.0-0ubuntu*         | 1:3.22.0-0ubuntu*         |          | base_test_deps |
|  6 | gnupg     | No version specified      | No version specified      |          | security_scan  |
|  7 | trivy     | No version specified      | No version specified      |          | security_scan  |

## Conda packages

|    | Package   | Version in 11.3.0   | Version in 11.4.0   | Status   | Build-Step   |
|---:|:----------|:--------------------|:--------------------|:---------|:-------------|
|  0 | bazel     | =8.3.1              | =9.2.0              | UPDATED  | build_deps   |
|  1 | protobuf  | =6.31.1             | =7.35.1             | UPDATED  | build_deps   |
|  2 | chrpath   | =0.16               | =0.16               |          | build_deps   |
|  3 | gcc       | =13.4.0             | =13.4.0             |          | build_deps   |
|  4 | gxx       | =13.4.0             | =13.4.0             |          | build_deps   |
|  5 | make      | =4.4.1              | =4.4.1              |          | build_deps   |
|  6 | pcre      | =8.45               | =8.45               |          | build_deps   |