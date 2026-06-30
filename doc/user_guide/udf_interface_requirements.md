# UDF Interface Requirements for Python, Java, and R

This document summarizes the user-facing UDF requirements and interface shape for Python, Java, and R in this repository.

It is based on:

- external Exasol documentation:
  - [UDFs overview](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/udf_overview.htm)
  - [Details for programming languages](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/programming_languages_detail.htm)
  - [Using Python 3 in UDFs](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/python3.htm)
  - [Using Java in UDFs](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/java.htm)
  - [Using R in UDFs](https://docs.exasol.com/db/latest/database_concepts/udf_scripts/r.htm)
- repo tests and runtime code:
  - [script-languages/test_container/tests/test/python3](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3)
  - [script-languages/test_container/tests/test/java](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java)
  - [script-languages/test_container/tests/test/r](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r)
  - [exaudfclient/rcontainer/exascript_r_preset.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_preset.R)
  - [exaudfclient/rcontainer/exascript_r_wrap.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_wrap.R)

This document intentionally excludes the low-level transfer protocol and focuses only on the public UDF interface and the observable runtime contract.

## Common requirements

All three languages must support the same high-level UDF model:

- A UDF is created with SQL using `SCALAR` or `SET` input semantics.
- A UDF is created with `RETURNS` or `EMITS` output semantics.
- Every executable UDF must provide a main callback named `run`.
- `SCALAR` UDFs are executed once per input row.
- `SET` UDFs are executed once per input group.
- UDF code must be able to access:
  - the current input values
  - metadata about the script and its input/output columns
  - iterator operations for `SET` scripts
  - output emission for `EMITS` scripts
  - connection definitions
- Input parameters are case-sensitive in script code.
- Dynamic signatures are supported:
  - dynamic input via `(...)`
  - dynamic output via `EMITS (...)`

## Common interface contract

### Input and output modes

The interface must support these four combinations:

- `SCALAR ... RETURNS`
- `SCALAR ... EMITS`
- `SET ... RETURNS`
- `SET ... EMITS`

Behavioral requirements:

- `SCALAR` code processes a single current row.
- `SET` code processes the current group and can iterate over its rows.
- `RETURNS` produces exactly one value per invocation.
- `EMITS` can produce zero, one, or many rows per invocation.

Repo tests that exercise these combinations:

- Python: [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/basic.py)
- Java: [combinations.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/combinations.py)
- R: [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/basic.py)

### Empty input behavior

The user-facing contract must preserve Exasol aggregate-like behavior for empty `SET` inputs:

- if a `SET ... RETURNS` UDF is evaluated over empty input without grouping, the result is `NULL`
- if a `SET ... EMITS` UDF is evaluated over empty input without grouping, the result row contains `NULL` values
- if the grouped relation itself produces no groups, `run` is not called and no rows are returned

Repo evidence:

- Python: [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/basic.py)
- R: [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/basic.py)

### Dynamic input

Dynamic input UDFs must be able to:

- discover the number of input columns at runtime
- inspect each input column's name and SQL type metadata
- read input values positionally

Repo evidence:

- Python: [dynamic_input.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/dynamic_input.py)
- Java: [dynamic_input.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/dynamic_input.py)

### Dynamic output

Dynamic output UDFs must support all of the following:

- query-time output specification via `EMITS (...)`
- output inference through `INSERT INTO SELECT`
- fallback callback for default output columns when query-time information is unavailable
- metadata access to output columns during execution
- validation failures for invalid `EMITS` clauses

Default output callback names:

- Python: `default_output_columns()`
- Java: `getDefaultOutputColumns(ExaMetadata exa)`
- R: `defaultOutputColumns()`

Expected callback result:

- a SQL column definition string, for example `a int, b varchar(100)`

Repo evidence:

- Python: [dynamic_output.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/dynamic_output.py)
- Java: [dynamic_output.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/dynamic_output.py)
- R: [dynamic_output.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/dynamic_output.py)

### Metadata contract

All three language interfaces must expose script metadata that includes at least:

- database name
- database version
- script language
- script name
- script schema
- current user
- scope user
- current schema
- script code
- session ID
- statement ID
- node count
- node ID
- memory limit
- VM ID
- input type
- input column count
- input column descriptors
- output type
- output column count
- output column descriptors

Column descriptors must expose:

- name
- language-visible type or class
- SQL type
- precision where applicable
- scale where applicable
- length or size where applicable

Repo evidence:

- Python: [metadata.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/metadata.py)
- Java: [metadata.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/metadata.py)
- R: [metadata.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/metadata.py)

### Connections

The public interface must support secure access to named Exasol connections.

Requirements:

- UDFs must be able to retrieve a named connection from the runtime
- connection information must expose type, address, user, and password
- import/export callback objects may carry either a connection name or direct connection information
- the preferred public usage is `CREATE CONNECTION` plus lookup by name

Repo evidence:

- Python: [get_connection.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/get_connection.py)
- Java: [exceptions.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/exceptions.py)
- R: [get_connection.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/get_connection.py)

### Script import and packaging

The interface must support code reuse across scripts, but the mechanism is language-specific:

- Python must support `exa.import_script(...)`
- R must support `exa$import_script(...)`
- Java must support external code packaging through class and JAR configuration rather than Python/R-style module import

Repo evidence:

- Python: [script_import.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/script_import.py)
- Java: [java_modules.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/java_modules.py)
- R: [script_import.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/script_import.py)

### Import and export callbacks

The interface must support user-defined import and export callbacks.

Import callback names:

- Python: `generate_sql_for_import_spec(import_spec)`
- Java: `generateSqlForImportSpec(ExaMetadata meta, ExaImportSpecification importSpec)`
- R: `generate_sql_for_import_spec(import_spec)`

Export callback names:

- Python: `generate_sql_for_export_spec(export_spec)`
- Java: `generateSqlForExportSpec(ExaMetadata meta, ExaExportSpecification exportSpec)`
- R: `generate_sql_for_export_spec(export_spec)`

Common callback requirements:

- return a SQL `SELECT` statement
- expose statement parameters
- expose subselect target columns for import where applicable
- expose source column names for export
- expose truncate/replace/created-by options for export
- expose connection name and direct connection information when supplied

Repo evidence:

- Python import: [import_alias.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/import_alias.py)
- Python export: [export_alias.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/export_alias.py)
- Java export: [export_alias.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/export_alias.py)
- R import: [import_alias.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/import_alias.py)
- R export: [export_alias.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/export_alias.py)

## Python interface requirements

### Required shape

Python UDFs must expose:

```python
def run(ctx):
    ...
```

Optional callbacks and helpers:

```python
def default_output_columns():
    ...

def generate_sql_for_import_spec(import_spec):
    ...

def generate_sql_for_export_spec(export_spec):
    ...

def cleanup():
    ...
```

### Runtime objects

The Python public interface must provide:

- `ctx` for row access, iteration, and emit
- `exa.meta` for script metadata
- `exa.get_connection(name)` for connection lookup
- `exa.import_script(name)` for script import

### Input access requirements

For fixed signatures:

- named attribute access such as `ctx.my_input`

For dynamic signatures:

- zero-based positional access such as `ctx[0]`

For `SET` scripts:

- `ctx.next()`
- `ctx.reset()`
- group or buffer size access used in tests via `ctx.size()` and `ctx.length`

Repo evidence:

- [dynamic_input.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/dynamic_input.py)
- [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/basic.py)
- [context.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/context.py)

### Output requirements

For `RETURNS`:

- return a single Python value

For `EMITS`:

- call `ctx.emit(...)`
- dynamic emit must support list expansion, for example `ctx.emit(*record)`

Type conversion requirements come from the documented mapping and repo tests:

- integer-like SQL values map to Python numeric types
- decimal scale-preserving values may map to `decimal.Decimal`
- strings map to `str`
- dates and timestamps map to `datetime` types
- booleans map to `bool`
- SQL `NULL` maps to `None`

Relevant tests:

- [emit.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/emit.py)
- [numeric_functions.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/numeric_functions.py)

### Lifecycle requirements

Observed runtime contract:

- module-level code must not be executed at script creation time
- top-level code is available as shared state during execution
- `cleanup()` is optional
- exceptions raised by `cleanup()` propagate to the caller

Repo evidence:

- [general.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/general.py)

### Python DataFrame extension

Python 3 UDFs additionally require Pandas DataFrame support:

- `ctx.get_dataframe(num_rows=..., start_col=...)`
- `ctx.emit(df)` for a full DataFrame

Behavioral requirements:

- `get_dataframe` advances the iterator by the consumed row count
- dynamic-input DataFrames use positional string labels `0`, `1`, ...
- emitted DataFrame columns are matched by position, not by label
- `None` is returned when no rows remain

Documentation:

- [py_dataframe.md](/home/torsten.kilias/Projects/script-languages-release/doc/user_guide/py_dataframe.md)

## Java interface requirements

### Required shape

Java UDFs must expose static callbacks in the main class:

```java
class MY_UDF {
    static ReturnType run(ExaMetadata exa, ExaIterator ctx) throws Exception {
        ...
    }
}
```

Optional callbacks:

```java
static void init(ExaMetadata exa) throws Exception { ... }
static void cleanup(ExaMetadata exa) throws Exception { ... }
static String getDefaultOutputColumns(ExaMetadata exa) throws Exception { ... }
static String generateSqlForImportSpec(ExaMetadata exa, ExaImportSpecification importSpec) { ... }
static String generateSqlForExportSpec(ExaMetadata exa, ExaExportSpecification exportSpec) { ... }
```

### Class and packaging requirements

The public Java UDF interface requires:

- the main class name to match the script name unless `%scriptclass` overrides it
- support for `%scriptclass`
- support for `%jar`
- callbacks implemented in the main script class

Repo evidence:

- [resources/java_udf/src/main/java/com/exasol/slc/testudf/Main.java](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/resources/java_udf/src/main/java/com/exasol/slc/testudf/Main.java)
- [java_modules.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/java_modules.py)

### Runtime objects

Java must expose:

- `ExaMetadata exa`
- `ExaIterator ctx`

`ExaIterator` must support at least:

- `next()`
- `emit(Object... values)`
- `reset()`
- `size()`
- typed getters by name and index
- `getObject(...)`

Repo evidence:

- [context.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/context.py)
- [dynamic_input.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/dynamic_input.py)

### Input access requirements

Java does not use property-style access.

Instead, the interface must provide typed getters such as:

- `getInteger`
- `getLong`
- `getBigDecimal`
- `getDouble`
- `getString`
- `getBoolean`
- `getDate`
- `getTimestamp`
- `getObject`

Both named and zero-based indexed access are required.

### Output requirements

For `RETURNS`:

- return the Java value directly from `run`

For `EMITS`:

- call `ctx.emit(...)`

Type coverage exercised in repo tests includes:

- integer and long numeric types
- `BigDecimal`
- `double`
- `String`
- `boolean`
- `Date`
- `Timestamp`

Repo evidence:

- [specific_types.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/specific_types.py)
- [emit.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/emit.py)

### Lifecycle requirements

Java lifecycle behavior must support:

- `init(ExaMetadata)` once per VM
- `cleanup(ExaMetadata)` once per VM
- no reliance on constructor execution

Repo evidence:

- [resources/java_udf/src/main/java/com/exasol/slc/testudf/Main.java](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/resources/java_udf/src/main/java/com/exasol/slc/testudf/Main.java)

## R interface requirements

### Required shape

R UDFs must expose:

```r
run <- function(ctx) {
    ...
}
```

Optional callbacks:

```r
cleanup <- function() {
    ...
}

defaultOutputColumns <- function() {
    ...
}

generate_sql_for_import_spec <- function(import_spec) {
    ...
}

generate_sql_for_export_spec <- function(export_spec) {
    ...
}
```

### Runtime objects

The R public interface must provide:

- `ctx` for current values, iteration, reset, and emit
- `exa$meta` for metadata
- `exa$import_script(name)` for script import
- `exa$get_connection(name)` for connection lookup

Repo evidence:

- [exascript_r_preset.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_preset.R)
- [exascript_r_wrap.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_wrap.R)

### Input access requirements

For fixed signatures:

- named field access such as `ctx$input_col`

For dynamic access:

- one-based indexed callable access such as `ctx[[1]]()`

For `SET` scripts:

- `ctx$next_row()`
- `ctx$reset()`
- `ctx$size()`

Special R-specific requirement:

- `next` is reserved in R, so the iterator method must be named `next_row`

The wrapper code also supports vectorized reads:

- `ctx$next_row(NA)` to load an entire group
- `ctx$next_row(n)` to load a batch

Repo evidence:

- [basic.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/basic.py)
- [dynamic_output.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/dynamic_output.py)
- [exascript_r_wrap.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_wrap.R)

### Output requirements

For `RETURNS`:

- the last expression or explicit returned value becomes the result

For `EMITS`:

- call `ctx$emit(...)`
- dynamic emit must support `do.call(ctx$emit, list(...))`

R-specific null and type requirements:

- `NA` is the SQL `NULL` equivalent
- supported input and output language types are constrained by the wrapper and docs
- the wrapper performs output type checks before emit for character, integer, double, boolean, date, and timestamp-like values

Repo evidence:

- [emit.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/emit.py)
- [specific_types.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/r/specific_types.py)
- [exascript_r_wrap.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_wrap.R)

### Lifecycle requirements

Observed R lifecycle behavior:

- top-level code executes once at VM initialization time
- `cleanup()` is optional
- `cleanup()` is called once per VM after execution

Runtime evidence:

- [exascript_r_wrap.R](/home/torsten.kilias/Projects/script-languages-release/exaudfclient/rcontainer/exascript_r_wrap.R)

## Script option requirements

The UDF interface must support script-level options that alter execution setup but are still part of the user-facing contract.

Required options from repo coverage:

- `%env` for environment variables
- `%scriptclass` for Java main-class override
- `%jar` for Java dependency packaging

Repo evidence:

- Python `%env`: [env_directive.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/python3/all/env_directive.py)
- Java `%scriptclass` and `%jar`: [java_modules.py](/home/torsten.kilias/Projects/script-languages-release/script-languages/test_container/tests/test/java/java_modules.py)

## Minimal interface examples

### Python

```python
def run(ctx):
    return ctx.my_input
```

### Java

```java
class MY_UDF {
    static String run(ExaMetadata exa, ExaIterator ctx) throws Exception {
        return ctx.getString("MY_INPUT");
    }
}
```

### R

```r
run <- function(ctx) {
    ctx$my_input
}
```

## Non-requirements

This document does not define:

- the transport format between database and UDF runtime
- serialization details
- VM startup protocol
- container-internal low-level exchange logic

Those areas are deliberately out of scope for this interface definition.
