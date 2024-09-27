#!/bin/bash

# Ensure the Docker socket has the correct group ownership and permissions
if [ -S /var/run/docker.sock ]; then
    sudo chown root:docker /var/run/docker.sock
    sudo chmod 660 /var/run/docker.sock
fi

# Execute telegraf
exec telegraf