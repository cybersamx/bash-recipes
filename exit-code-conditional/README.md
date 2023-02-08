# Check Command Result

We can check for the exit code of the last executed shell command by examining the `$?` variable.

```shell
kubectl get pods | grep auth-server
echo $?  # Prints 0 if auth-server is found in the output of kubectl, prints 1 otherwise.
```

## Conditional

We can integrate running a command and use an `if-then-fi` statement block to check on the command's exit code. We can do this.

```shell
kubectl get pods | grep auth-server
if [ $? -eq 0 ]; then
  echo 'found'
else
  echo 'not found'
fi
```

We can also do this...

```shell
kubectl get pods | grep auth-server && echo 'found' || echo 'not found'
```

While the above examples are legit and works, they are in general not a good practice. Read [here](https://mywiki.wooledge.org/BashPitfalls#cmd1_.26.26_cmd2_.7C.7C_cmd3) and [here](https://github.com/koalaman/shellcheck/wiki/SC2181) for why `&& ||` and `command if [ $? -eq 0 ]; then...` are bad respectively.

The preferred way is:

```shell
if kubectl get pods | grep auth-server; then
  echo 'found'
else
  echo 'not found'
fi
```

Alternatively...

```shell
if ! kubectl get pods | grep auth-server; then
  echo 'not found'
else
  echo 'found'
fi
```
