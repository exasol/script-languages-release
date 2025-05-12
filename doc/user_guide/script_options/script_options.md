# Exasol UDF Script Options: User Documentation

This document provides guidance for using script options within Exasol User-Defined Functions (UDFs). It is important to distinguish that script options allow customization of script execution in the database environment, enhancing the flexibility and functionality of UDFs.

## Understanding Script Options

Script options are configuration settings within a UDF script that define specific behaviors or parameters for execution. They are instrumental for developers, data scientists, and database administrators to tailor script functionality to meet particular requirements.

### Syntax

Each script option follows a specific syntax structure, ensuring consistent interpretation and execution:

```
%<optionKey><white spaces><optionValue>;
```

- **Option Key**: The identifier of the script option.
- **White Spaces**: Characters that act as separators between the key and value.
- **Option Value**: The configuration or parameter corresponding to the option key.

### Key Features

#### White Spaces in Options

White spaces serve as token separators, allowing flexibility in script layout and readability. Options can be preceded by any number of white spaces, which the system recognizes and processes accordingly.

#### Multiple Option Management

Script options can be integrated at various lines within a script, or multiple options can be put at the same line. Moreover, handling multiple script options with the same key is supported through strategic value merging rather than overwriting.

### Generic Script Options

There is one script option which can be used in all supported languages: `%env`. This option is useful to set additional environment variables during the execution of a UDF.

Example:
```
%env MY_LIBRARY_PATH=/buckets/bfsdefault/my_libs/my_lib;
```

### Java Language Specific Script Options

For Java, additional script options exist to manage specific execution parameters more effectively:

- **%scriptclass**: Defines the class used during script execution.
- **%jar**: Specifies JAR files for Java CLASSPATH management.
- **%import**: Enables the integration of external scripts, processed recursively to ensure all references are correctly replaced.
- **%jvmoption**: Allows setting options for the Java VM.

## Differences Between Script-Language Container Versions

Since v9.0.0 of the Script-Languages container, there are two parser implementations for the Script Options. The new parser supports escape sequences for special characters, besides some improvements for error edge cases. The detailed differences can be found in:
- [Script Options Handling v1](./script_options_version_1.md)
- [Script Options Handling v2](./script_options_version_2.md)

The new parser is the default one for the Java 17 Script-Options container. But the new parser can be manually activated in all Java Script-Languages containers since v9.0.0 with:
```
%env SCRIPT_OPTIONS_PARSER_VERSION=2;
```
The same way, if required, it is possible to switch back to the v1 parser implementation on Java 17 with:
```
%env SCRIPT_OPTIONS_PARSER_VERSION=1;
```

This might be useful if existing UDFs encounter unexpected problems with the new Script-Options parser implementation. However, we recommend fixing those problems as the v1 parser implementation will be removed at some point in the future. Please check the migration guide for updating your UDF's to the new parser:
[Migration Guide](./migrations_guide.md)

## Additional Resources

- [Script Options Requirements](https://github.com/exasol/script-languages/blob/master/exaudfclient/docs/script_options_requirments.md)
- [Script Options Design Document](https://github.com/exasol/script-languages/blob/master/exaudfclient/docs/script_options_design.md)
