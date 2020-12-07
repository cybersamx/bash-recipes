# Function

Functions in bash takes in parameters as an array and perform some task with them.

## Return Values

1. Unlike other programming languages, we can only return a numeric value as an exit code from a function. And we need to read that return value as an exit code using ${?}.

   ```bash
   function foo() {
       return 8
   }

   foo
   echo "Return value: ${?}"
   ```

1. To "return" other data types, we have to pass the values to stdout and let the caller perform variable substitution.

   ```bash
   function foo() {
       echo "hello ${1}"
   }

   output=$(foo world)
   echo ${output}
   ```

1. Finally, you can pass a value back to the caller via global variable.

   ```bash
   declare msg
   function foo() {
       msg = 'hello'
   }

   foo
   echo ${msg}
   ```

## Parameters

The function parameters are represented as an array ie. the first parameter is access as the first element, the second parameter as the second element, and so forth. This means that we can't pass array as an argument to a function. For a multi-parameter function, the only way to pass an array to one of the parameters is to pass the array as a comma-delimited string.

## Source Code

* [Basic functions](function.sh) - See this script for basic functions.
* [Trick to pass an array as argument](array_arg.sh) - See this script for passing an array as an argument via comma-delimited string.
