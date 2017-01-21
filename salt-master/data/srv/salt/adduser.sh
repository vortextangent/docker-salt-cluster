#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    @echo off
    echo "Usage: $0 username [uid] [gid] [groups] [home] [shell]";
    echo "";
    exit 1;
fi

salt '*' user.add $1 $2 $3 $4 $5 $6
salt '*' cmd.run \
    "ssh-keygen -q -N '' -f /home/$1/.ssh/id_rsa" \
    runas=$1