# Script-Options v1 User Documentation

## Contents
1. Introduction
2. Details

---

## 1. Introduction

This documentation describes the detailed behavior of the Script-Options Parser v1, which is used in Exasol's Java 11 Script-Languages container.

## 2. Details

### Unknown Script Options

Only the known script options will be removed from the UDF source code during execution. Unknown script options will be kept, which might result in unexpected Java compilation errors.

### Trailing white spaces in option values

Trailing white spaces for all option values will be removed.

```
%jar abc.jar   ;
```

becomes `abc.jar`.

### `%scriptclass` Option

Only the first occurrence of the `%scriptclass` option will be removed. If there is more than one occurrence, it will cause a compile error.

### `%jar` Option

#### Duplicates

The implementation removes duplicates of the `%jar` option and reorders them alphabetically.


### `%jvmoption` Option

White spaces in the JVM option value will be handled as separators. For example:

```
%jvmoption optionA=abc optionB=def;
```

becomes `[ optionA=abc, optionB=def ]`
