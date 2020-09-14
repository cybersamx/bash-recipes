# Signal Trap

UNIX uses signals for IPC (inter process communication). This way one process can communicate with another process directly. The UNIX operating system has a set of standard signals that are usd to manage the lifecycle of all processes.

## Traps

A shell script can set up a trap to handle an incoming signal. This way the script can explicitly clean up any resources, temp files, locks, etc and exit gracefully.

We use the command `trap` to specify which signal(s) to intercept, and the command to run after receiving that signal(s).

These are the most common signals that we should handle:

| Name | Number | Description |
|:-----|-------:|-------------|
| HUP  | 1      | Hang up |
| INT  | 2      | Interrupt, eg. CTRL-C |
| QUIT | 3      | Quit - exit and core dump, eg. CTRL-\ |
| KILL | 9      | Kill. Can't be intercepted or ignore |
| TERM | 15     | Terminate |

The `trap` accepts 1 or more of the above signal names, plus `EXIT` which in bash and POSIX indicates any signal that causes the current process to exit. So trapping `EXIT` should suffice.

## Use Cases

* [General script](exit.sh) - a simple recipe for setting up an EXIT trap.
* [Remove temp file](cleanup.sh) - a simple recipe for removing temp file when the script exits or being interrupted.
* [Reload config](reload.sh) - reload configurations after a hangup.

Run the scripts by invoking them directly. We can press CTRL-C to cause the script to exit. For the reload script, the trap intercepts on SIGHUP, so issue a `kill -HUP [process-id-of-reload.sh]` or `kill -s HUP [process-id-of-reload.sh]` to send a SIGHUP to the `reload.sh` process.

## Notes

Notice that we are using an infinite loop instead of sleep to simulate a long-running process. The reason for doing this is that the `sleep` command doesn't actually catch the SIGINT. So if we use the sleep command in the script, sleep will actually continue running even though the script itself is terminated.

Here's [a script that uses sleep](sleep.sh). Let's try it out to demonstrate the above note.

```bash
$ ps | grep sleep
[Nothing]
$ ./sleep.sh &  # Run the script
[1] 98199
Running...
$ ps | grep sleep
98199 ttys005    0:00.01 bash ./sleep.sh
98202 ttys005    0:00.00 sleep 10000
$ kill -TERM 98199
Cleaning up...                       
Exit...
$ ps | grep sleep
98202 ttys005    0:00.00 sleep 10000
```

As you can see sleep is still running. Also, you can run the `sleep.sh` script in the foreground (without the `&` suffix) and then press CTRL-C. Now the `sleep.sh` script and the `sleep` process are both terminated. 

This [article](https://mywiki.wooledge.org/SignalTrap) provids a more in-depth explanation on what's going on with traps with sleep, CTRL-C, and SIGINT. It's worth reading.

## Reference

* [Sending and Trapping Signals](https://mywiki.wooledge.org/SignalTrap)
