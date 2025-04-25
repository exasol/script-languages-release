### Migrating UDFs using Script Options V1 to Script Options V2

Welcome to the migration guide for transitioning your User Defined Functions (UDFs) from Script Options V1 to Script Options V2 in Exasol. Please follow the steps below to ensure a smooth migration:

#### Step 1: Understanding Key Differences

- **White Spaces Handling**:
  - V1: All white spaces between the option key and value are treated as separators; trailing spaces are removed.
  - V2: White spaces between the option key and value are ignored; escape sequences at the start are recognized.

- **Unknown Options Behavior**:
  - V1: Unknown options remain in the script and are handled by the Java compiler.
  - V2: Unknown options cause the parser to throw an exception.

- **%scriptclass Option Handling**:
  - V1: Only the first occurrence is removed; other instances remain.
  - V2: All occurrences are removed.

- **%jar Option Handling**:
  - V1: Duplicates are unified and sorted alphabetically.
  - V2: Duplicates are kept, and the order is preserved.

- **%import Option Handling**:
  - V1: `%scriptclass` is ignored but not removed; already imported scripts are not re-imported.
  - V2: `%scriptclass` is removed; same logic for removal of already imported scripts.

#### Step 2: Preparing Your Environment

- **Roles**:
  - Database Administrators: Oversee execution and configuration.
  - Data Scientists and Developers: Adapt script implementations to new parser features.

#### Step 3: Modifying Your UDF Scripts

1. **General Script Options Syntax**:
   - Ensure options are formatted correctly using the `%<optionKey><white spaces><optionValue>;` syntax.

2. **White Spaces**:
   - Update scripts to handle white spaces according to V2 rules:
      - Use escape sequences (`\ `, `\t`, `\f`, `\v`) where needed.

3. **Escape Sequences**:
   - Incorporate escape sequences like `\n`, `\r`, `\;` within script option values.

4. **Multiple Options**:
   - Adjust handling for merging multiple options with the same key and different values.

5. **Java-specific Changes**:
   - **%scriptclass**: Ensure removal of all occurrences in your Java code.
   - **%jar Options**: Update logic to maintain order.
   - **%import**: Change handling to remove `%scriptclass` and manage imports correctly.

#### Step 4: Testing and Verification

- Conduct thorough testing to ensure script options are parsed correctly. Pay attention to exception handling for unknown options.

#### Step 5: Update Your Projects

- Make necessary modifications in your open-source or closed-source projects to accommodate the new parser library, ensuring compatibility across environments.

### Additional Resources

- For internal details, visit the [Exasol internal Confluence](https://exasol.atlassian.net/wiki).
- If you have any issues or need further assistance, please contact the ITM ServiceDesk by opening a ticket [here](https://exasol.atlassian.net/servicedesk/customer/portals).

By following these steps, you should be able to smoothly migrate your UDF scripts from Script Options V1 to V2. Enjoy the enhanced functionality and improved script management!