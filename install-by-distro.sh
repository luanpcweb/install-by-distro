DISTRO=$( cat /etc/*-release | tr [:upper:] [:lower:] | grep -Poi '(debian|ubuntu|red hat|centos|nameyourdistro)' | uniq )
if [ -z $DISTRO ]; then
    DISTRO='unknown'
    echo "Unknown"
fi
echo "Detected Linux distribution: $DISTRO"

if [ "$DISTRO" = "debian" ]; then
    echo "Install Debian"
    apt-get update -y

elif [ "$DISTRO" = "centos" ]; then
    echo "Install Centos"
    apt-get update -y

else
    echo "Not run"
fi

