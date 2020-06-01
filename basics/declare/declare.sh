#!/usr/bin/env bash

# delcare is a bash constuct that set a variable attributes and values.

# declare options
# + turns off a given attribute
# - turns on a given attribute
# -g Create global varaibles when used in a shell
# -a Make variables indexed array (if supported)
# -A Make variables associative array (if supported)
# -i Make variables have integer attribute, similar to let and allows arithmetic
# -l Convert variables to lower case on assignment
# -n Make variable a reference to the variable named by its value
# -r Make variables readonly
# -t Make variables have the 'trace' attribute
# -u Convert variables to upper case on assignment
# -x to make variables export
#
# declare makes variables local, as with the local command.

# --- Declare vs Normal Assign ---

function declare_vs_assign() {
    # Declaration and assignment.
    declare -i a=5
    declare -i b="${a}"+3
    echo "${b}"

    # Assigns value to the variable.
    # Variable is implicitly declaraed as default string type.
    c=5
    d="${c}"+3
    echo "${d}"
}

# --- Local Variable ---

function declare_local() {
    # local and declare are the same
    local a='local a'
    declare b='local b'
    echo "${a}"
    echo "${b}"
}

# --- Export Variable ---

function declare_export() {
    declare -x MY_EXPORT='export'
    env | grep MY_EXPORT

    # Remove the export variable
    unset MY_EXPORT
    env | grep MY_EXPORT
}

# --- Integer ---

function declare_integer() {
    declare -i a=3*5
    echo "${a}"

    # Let is the construct that enable arithmetic evaluation in bash.
    let b=3*5
    echo "${b}"
}

# --- Indexed Array ---

function declare_indexed_array() {
    declare -a array=('a' 'b' 'c')
    echo "${array[@]}"
}

# --- Readonly Variable ---

function declare_readonly() {
    declare -r const="immutable"
    
    # Expect an error
    const="mutable"
}

declare_vs_assign
echo ''
declare_local
echo ''
declare_export
echo ''
declare_integer
echo ''
declare_indexed_array
echo ''
declare_readonly
