#!/bin/bash
PUBLIC_KEY=~/.ssh/id_rsa.pub

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo -e "\nCopies SSH public key to the given Raspberry Pi host. Uses ~/.ssh/id_rsa.pub by default.\n"
  echo -e "Usage: $0 <host> [ssh-public-key-file]\n"
  exit 1
fi

HOST=$1

if [ "$2" != "" ]; then
  if [ ! -f "$2" ]; then
    echo "File not found: $2"
    exit 1
  else
    PUBLIC_KEY=$2
  fi
fi

ansible-playbook -k -i $HOST, setup.yml -e "ssh_public_key=$PUBLIC_KEY" -e ansible_ssh_user=pi