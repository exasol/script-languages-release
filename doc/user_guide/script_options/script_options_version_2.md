# Script-Options Parser v2 User Documentation

## Contents
1. Introduction
2. Details

---

## 1. Introduction

This documentation describes the detailed behavior of the Script-Options Parser v2, which is used in Exasol's Java 17 Script-Languages container and later. 

## 2. Details

### Escape Sequences

The new parser supports escape sequences for the following characters:

| Name         | C Syntax | Escape Sequence | 
|--------------|----------|-----------------|
| newline      | '\n'     | '\n'            |
| tabulator    | '\t'     | '\t'            |
| vertical tab | '\v'     | '\v'            |
| form feed    | '\f'     | '\f'            |
| space        | ' '      | '\ '            |
| return       | '\r'     | '\r'            |
| semicolon    | ';'      | '\;'            |

This allows Script Options values to start with whitespace or include semicolons. For example:

```
%jvmoption \tabc\;def;
```
becomes `    abc;def`.

Note that whitespace characters in the middle of a value do not require escape sequences. For example:

```
%jvmoption abc def;
```
becomes `abc def`.

### Unknown Script Options

Unknown script options will be detected and will cause an explicit error.

### %scriptclass Option

Only the first occurrence of the `%scriptclass` option will be used; all other occurrences will be removed.

### %jar Option

#### Duplicates

The implementation keeps duplicates and does not change the order when building the `CLASSPATH`.

#### Trailing Whitespaces

Trailing whitespaces for JAR option values will be removed. For example:

```
%jar abc.jar   ;
```
becomes `abc.jar`.

However, it is possible to use escape sequences to add JAR files containing whitespace characters. For example:

```
%jar abc.jar\   ;
```
becomes `abc.jar `.

### %jvmoption Option

It is possible to use escape sequences to encode whitespace characters in JVM options. For example:

```
%jvmoption optionA=abc\ optionB=def;
```
becomes `optionA=abc optionB=def`
