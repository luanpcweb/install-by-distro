#!/bin/bash

DISTRO=$( cat /etc/*-release | tr [:upper:] [:lower:] | grep -Poi '(debian|ubuntu|red hat|centos)' | uniq )
if [ -z $DISTRO ]; then
    DISTRO='unknown'
    echo "Unknown"
fi
echo "Detected Linux distribution: $DISTRO"

if [[ "$DISTRO" = "debian" ]]; then
    echo "Install Debian"
    apt-get update -y

elif [[ "$DISTRO" = "centos" ]]; then
    echo "Install Centos"
    yum update -y

elif [[ "$DISTRO" = "ubuntu" ]]; then
    echo "Install Ubuntu"
    apt-get update -y

else
    echo "Not run"
fi

