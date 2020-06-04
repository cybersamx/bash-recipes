# Arithmetic in Bash

## Integer Arithmetic

There 3 ways to do integer arithmetic in bash:

* Declare an integer variable or expression using `let`.
* Declare an integer variable or expression using `declare`.
* Enclose an integer variable or expression using double parenthesis.

### Let

Using `let`.

```bash
let a=1+2
echo $a   # Prints 3
let "a = 1 + 2"
echo $a   # Prints 3
let a=$a+3
echo $a   # Prints 6
let a++
echo $a   # Prints 7
let a=$a**2
echo $a   # Prints 49
```

See [source code](operators_let.sh)

### Declare

Using declare.

```bash
a=1+2
echo $a   # Prints 1+2
declare -i a
a=1+2
echo $a   # Prints 3
```

See [source code](operators_declare.sh)

### Double Parenthesis

Using double parenthesis.

```bash
a=$((1+2))
echo $a   # Prints 3
a=$(( 1 + 2))
echo $a   # Prints 3
a=$((a+3))
echo $a   # Prints 6
((a++))
echo $a   # Prints 7
a=$((a**2))
echo $a   # Prints 49
```

See [source code](operators_double_parentheses.sh)

## Float Arithmetic

For floating point calculation in bash use `bc`.

```bash
a=$((1+2.5))
echo $a   # Gives an error (error token is ".5")
a=$(echo "1+2.5" | bc)
echo $a   # Prints 3.5
a=$(echo "$a+0.5" | bc)
echo $a   # Prints 4.0
```

See [source code](operators_bc.js)
