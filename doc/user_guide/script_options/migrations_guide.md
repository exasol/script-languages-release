### Migrating UDFs using Script Options V1 to Script Options V2

Welcome to the migration guide for transitioning your User Defined Functions (UDFs) from Script Options V1 to Script Options V2 in Exasol. Please follow the steps below to ensure a smooth migration:

#### Step 1: Understanding Key Differences

| Feature                  | v1                                                                                                           | v2                                                                                                                              | Action                                                                     | 
|--------------------------|--------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------| 
| White space handling     | All white spaces between the option key and value are treated as separators; trailing spaces are removed.    | All white spaces between the option key and value are treated as separators; trailing spaces are kept, except for `jar` option. | Check for trailing white spaces in script options and remove if necessary. |
| Unknown Options Behavior | Unknown options remain in the script and might cause Java compiler errors.                                   | Unknown options cause the parser to throw an exception.                                                                         | Remove unknown options.                                                    |
| `%scriptclass`           | Only the first occurrence is removed; other instances remain (and probably will cause a Java compiler error) | The parser throws an error if there is more than one `scriptclass` option.                                                      | Remove all but one `%scriptclass` entry.                                   |
| `%jar`                   | Duplicates are unified and sorted alphabetically.                                                            | Duplicates are kept, and the order is preserved.                                                                                | Check if the order of %jar statements is important.                        |
| `%import`                | `%scriptclass` is ignored but not removed; already imported scripts are not re-imported.                     | `%scriptclass` is removed; same logic for removal of already imported scripts.                                                  | n/a                                                                        |
| `%jvm`                   | White space is interpreted as separator between JVM options.                                                 | White space is interpreted as separator between JVM options. But it is possible to encode white spaces with escape sequence.    | Use escape sequences for JVM options where you need white spaces.          |


#### Step 2: Preparing Your Environment

- **Roles**:
  - Database Administrators: Oversee execution and configuration.
  - Data Scientists and Developers: Adapt script implementations to new parser features.

Both roles will need to cooperate: While the Data Scientist/Developer will have to modify the UDF scripts, the Database Administrator will have to deploy the updated scripts.

#### Step 3: Modifying Your UDF Scripts

1. Ensure options are formatted correctly using the `%<optionKey><white spaces><optionValue>;` syntax.
2. Incorporate escape sequences like `\ `, `\t`, `\f`, `\v`, `\n`, `\r`, `\;` within script option values, where needed.
3. Validate that there are no script options for Java UDF other than `scriptclass`, `jvmoption`, `import` and `jar`.
4. Verify order of your `jar` options.
5. Validate that there is only one `scriptclass` option per UDF.

#### Step 4: Testing and Verification

- Conduct thorough testing to ensure script options are parsed correctly. Pay attention to exception handling for unknown options.


By following these steps, you should be able to smoothly migrate your UDF scripts from Script Options V1 to V2. Enjoy the enhanced functionality and improved script management!