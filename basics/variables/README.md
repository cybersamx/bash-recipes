# Variables

Variables in bash.

## Default Values

Bash provides the following ways to set a variable with a "default" value if the variable is unset. The following examples provide the same output, ie. print value of $lang; if $lang is unset, print 'en-us'.

| Format            | Example               |
|-------------------|-----------------------|
| `${var:-default}` | echo `${lang:-en-us}` |
| `${var=default}`  | echo `${lang=en-us}`  |
| `${var:=default}` | echo `${lang:=en-us}` |

Now default value substitution using `=` and `:=` will not work on positional parameters such as function arguments. So the following code will fail and you will get an error message `$1: cannot assign in this way`.

```shell
function echo_lang() {
  echo "${1=en-us}"
  echo "${1:=en-us}"
}

# Fails
echo_lang
```

Use `:-` instead.

```shell
function echo_lang() {
  echo "${1:-en-us}"
}

# Works
echo_lang
```

## Declare

`declare` is a bash construct that set a variable attributes and values.

`declare` options are:

| Option | Description                                                                 |
|--------|-----------------------------------------------------------------------------|
| +      | Turn off a given attribute                                                  |
| -      | Turn on a given attribute                                                   |
| -g     | Create global varaibles when used in a shell                                |
| -a     | Make variables indexed array (if supported)                                 |
| -A     | Make variables associative array (if supported)                             |
| -i     | Make variables have integer attribute, similar to let and allows arithmetic |
| -l     | Convert variables to lower case on assignment                               |
| -n     | Make variable a reference to the variable named by its value                |
| -r     | Make variables readonly                                                     |
| -t     | Make variables have the 'trace' attribute                                   |
| -u     | Convert variables to upper case on assignment                               |
| -x     | To make variables export                                                    |

* [Declare variables](declare.sh)
