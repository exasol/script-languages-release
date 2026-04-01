# Internal packages comparison between flavor "Test Exasol 8 Cuda Ml" in 11.2.0 and flavor "Test Exasol 8 Cuda Ml" in 11.1.1

<!-- markdown-link-check-disable -->

## Apt packages

|    | Package   | Version in 11.1.1         | Version in 11.2.0         | Status   | Build-Step     |
|---:|:----------|:--------------------------|:--------------------------|:---------|:---------------|
|  0 | binutils  | 2.42-4ubuntu2.10          | 2.42-4ubuntu2.10          |          | base_test_deps |
|  1 | gdb       | 15.0.50.20240403-0ubuntu1 | 15.0.50.20240403-0ubuntu1 |          | base_test_deps |
|  2 | gdbserver | 15.0.50.20240403-0ubuntu1 | 15.0.50.20240403-0ubuntu1 |          | base_test_deps |
|  3 | patchelf  | 0.18.0-1.1build1          | 0.18.0-1.1build1          |          | base_test_deps |
|  4 | strace    | 6.8-0ubuntu2              | 6.8-0ubuntu2              |          | base_test_deps |
|  5 | valgrind  | 1:3.22.0-0ubuntu3         | 1:3.22.0-0ubuntu3         |          | base_test_deps |
|  6 | gnupg     | No version specified      | No version specified      |          | security_scan  |
|  7 | trivy     | No version specified      | No version specified      |          | security_scan  |

## Conda packages

|    | Package      | Version in 11.1.1   | Version in 11.2.0   | Status   | Build-Step   |
|---:|:-------------|:--------------------|:--------------------|:---------|:-------------|
|  0 | gcc_linux-64 | =13.4.0             |                     | REMOVED  | build_deps   |
|  1 | gxx_linux-64 | =13.4.0             |                     | REMOVED  | build_deps   |
|  2 | gcc          |                     | =13.4.0             | NEW      | build_deps   |
|  3 | gxx          |                     | =13.4.0             | NEW      | build_deps   |
|  4 | bazel        | =8.3.1              | =8.3.1              |          | build_deps   |
|  5 | chrpath      | =0.16               | =0.16               |          | build_deps   |
|  6 | make         | =4.4.1              | =4.4.1              |          | build_deps   |
|  7 | pcre         | =8.45               | =8.45               |          | build_deps   |
|  8 | protobuf     | =6.31.1             | =6.31.1             |          | build_deps   |