# Working Directory

Here are two helpful tips for finding the working directory.

## Called Script Directory

To get the directory hosting a script no matter where you call the script from use this command:

```bash
DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
```

## Git Root Directory

If a directory host a local git project, you can get the root directory by calling this command:

```bash
DIR="$(git rev-parse --show-toplevel)"
```

## Reference

* [Stackoverflow: How can I get the source directory of a Bash script from within the script itself?](https://stackoverflow.com/questions/59895/how-can-i-get-the-source-directory-of-a-bash-script-from-within-the-script-itsel)
