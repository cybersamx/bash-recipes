# Conditional in Bash

There are 2 types of comparison in bash: integer and string.

## Comparative Table of Comparisons

| Comparison               | Integer                | String  (using [ ] construct) | String  (using [[ ]] construct) |
|--------------------------|------------------------|-------------------------------|---------------------------------|
| equal                    | `if [ ${a} -eq ${b} ]` | `if [ "${a}" = "${b}" ]`      | `if [[ "${a}" = "${b}" ]]`      |
|                          |                        | `if [ "${a}" == "${b}" ]`     | `if [[ "${a}" == "${b}" ]]`     |
| not equal                | `if [ ${a} -ne ${b} ]` | `if [ "${a}" != "${b}" ]`     | `if [[ "${a}" != "${b}" ]]`     |
| greater than             | `if [ ${a} -gt ${b} ]` | `if [ "${a}" \< "${b}" ]`     | `if [[ "${a}" < "${b}" ]]`      |
| greater than or equal to | `if [ ${a} -ge ${b} ]` | `if [ "${a}" \> "${b}" ]`     | `if [[ "${a}" > "${b}" ]]`      |
| less than                | `if [ ${a} -lt ${b} ]` |                               |                                 |
| less than or equal to    | `if [ ${a} -le ${b} ]` |                               |                                 |
| is empty (string)        |                        | `if [ -z "${a}" ]`            | `if [[ -z "${a}" ]]`            |
| is not empty (string)    |                        | `if [ -n "${a}" ]`            | `if [[ -n "${a}" ]]`            |

## Compound Conditionals

| Comparison | Operator |
|------------|----------|
| or         | `&&`     |
| and        | `||`     |

We will use an actual example to illustrate compound conditionals. Here's a [list of all versions of MacOS](https://en.wikipedia.org/wiki/MacOS_version_history#Releases), let's say that we are creating a script that supports MacOS Yosemite and above. This means we need to do a check on the versions from 10.10 through 12.x. We can construct our conditionals the following way.

```bash
# Check on the version.
if [[ "${major_ver}" -eq 10 ]] && [[ "${minor_ver}" -ge 10 ]] || [[ "${major_ver}" -ge 11 ]]

# We can also group all the expressions within the `[[ ]]` block.
if [[ "${major_ver}" -eq 10 && "${minor_ver}" -ge 10 || "${major_ver}" -ge 11 ]]
```

### Notes

1. Be extra careful with spacing; `if [ "${a}" = "${b}" ]` is not the same as `if [ "${a}"="${b}" ]`. The latter is an assignment operation.

## Source Code

* [Example](conditional.sh)

## Reference

* [TLDP Advanced Bash-Scripting Guide: Other Comparison Operators](https://tldp.org/LDP/abs/html/comparison-ops.html)
