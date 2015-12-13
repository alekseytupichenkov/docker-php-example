#!/bin/sh
CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
IP="$(docker-machine ip default)"
if [[ -z "$IP" ]]; then
   docker-machine create --driver VirtualBox default
   IP="$(docker-machine ip default)"
fi
echo "Virtual machine IP $IP"

eval "$(docker-machine env default)"
echo ""

. $CUR_DIR/linux.sh