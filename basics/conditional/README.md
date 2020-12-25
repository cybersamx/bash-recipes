# Conditional in Bash

There are 2 types of comparison in bash: integer and string.

## Comparative Table of Comparisons

| Comparison               | Integer                    | String  (using [ ] construct) | String  (using [[ ]] construct) |
|--------------------------|----------------------------|-------------------------------|---------------------------------|
| equal                    | `if [ "${a}" -eq "${b}" ]` | `if [ "${a}" = "${b}" ]`      | `if [[ "${a}" = "${b}" ]]`      |
|                          |                            | `if [ "${a}" == "${b}" ]`     | `if [[ "${a}" == "${b}" ]]`     |
| not equal                | `if [ "${a}" -ne "${b}" ]` | `if [ "${a}" != "${b}" ]`     | `if [[ "${a}" != "${b}" ]]`     |
| greater than             | `if [ "${a}" -ne "${b}" ]` | `if [ "${a}" \< "${b}" ]`     | `if [[ "${a}" < "${b}" ]]`      |
| greater than or equal to | `if [ "${a}" -ne "${b}" ]` | `if [ "${a}" \> "${b}" ]`     | `if [[ "${a}" > "${b}" ]]`      |
| less than                | `if [ "${a}" -ne "${b}" ]` |                               |                                 |
| less than or equal to    | `if [ "${a}" -ne "${b}" ]` |                               |                                 |
| is empty (string)        |                            | `if [ -z "${a}" ]`            | `if [[ -z "${a}" ]]`            |
| is not empty (string)    |                            | `if [ -n "${a}" ]`            | `if [[ -n "${a}" ]]`            |

## Compound Comparison

| Comparison | Operator |
|------------|----------|
| or         | `&&`     |
| and        | `||`     |

### Notes

1. Be extra careful with spacing; `if [ "${a}" = "${b}" ]` is not the same as `if [ "${a}"="${b}" ]`. The latter is an assignment operation.

## Source Code

* [Example](conditional.sh)

## Reference

* [TLDP Advanced Bash-Scripting Guide: Other Comparison Operators](https://tldp.org/LDP/abs/html/comparison-ops.html)

