# Variables

Variables in bash.

## Declare

`declare` is a bash construct that set a variable attributes and values.

`declare` options are:

| Option | Description |
|--------|-------------|
| +      | Turn off a given attribute |
| -      | Turn on a given attribute |
| -g     | Create global varaibles when used in a shell |
| -a     | Make variables indexed array (if supported) |
| -A     | Make variables associative array (if supported) |
| -i     | Make variables have integer attribute, similar to let and allows arithmetic |
| -l     | Convert variables to lower case on assignment |
| -n     | Make variable a reference to the variable named by its value |
| -r     | Make variables readonly |
| -t     | Make variables have the 'trace' attribute |
| -u     | Convert variables to upper case on assignment |
| -x     | To make variables export |

* [Declare variables](declare.sh)
