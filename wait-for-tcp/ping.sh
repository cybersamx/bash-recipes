#!/usr/bin/env bash

# Configurations
declare -ir wait=2
declare -ir final_wait=1
declare -ir port=27017
declare -ir retries=3

function ping_tcp() {
    # Internal state
    declare -i passed=0

    # Loop thru to ping the port and if it fails, wait before retry it again unless we have exhausted all our retries.
    printf "Connecting to port %s" "${port}"
    for _ in $(seq 1 ${retries}); do
      nc -v -w 1 localhost ${port} > /dev/null 2>&1 && passed=0 && break || passed=${?} && printf '.' && sleep ${wait};
    done
    echo
    if [ ${passed} -eq 0 ]; then
        echo "Port ${port} is open"

        # Final wait before running the program. Sometimes a server may have additional init after a tcp is open.
        echo "Wait another ${final_wait} seconds"
        sleep ${final_wait}

        # Run the program that connects to the tcp
        echo 'Program is run here'
    else
        echo "Port ${port} is closed"
    fi

    echo ${passed}
}

ping_tcp
