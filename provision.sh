#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo -e "\nProvisions the given host using the given Ansible playbook file.\n"
  echo -e "Assumes that passwordless SSH is already setup for the host. (Use firstrun.sh for achieve that)\n"
  echo -e "Usage: $0 <host> <playbook>\n"
  exit 1
fi

HOST=$1
PLAYBOOK=$2

if [ ! -f "$PLAYBOOK" ]; then
  echo "Playbook not found: $PLAYBOOK"
  exit 1
fi

ansible-playbook -i $HOST, $PLAYBOOK