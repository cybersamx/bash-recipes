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

1. To "return" other data types, we have to pass the values to stdout and let the caller perform variable subsitution to. 

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

## Source Code

* [Source](function.sh) - See this script for details
