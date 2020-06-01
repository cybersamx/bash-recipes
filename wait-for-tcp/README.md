# Retry Connection to TCP Port

A recipe shows how you can attempt to connect to a TCP port using the `nc` command in every x seconds for n tries.

## Use Cases

A typical server listens to a TCP port and can take some time to launch. We want to have a script that "ping" this TCP port to check that it is "alive" before starting a client to make the actual connection to the server. 

This script is useful in Docker container orchestration when the launch of a client depends on the availability of TCP ports.

See [source](ping.sh).
