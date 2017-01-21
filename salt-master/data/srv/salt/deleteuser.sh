#!/usr/bin/env bash

#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    @echo off
    echo "Usage: $0 username [-force] [-remove-files]";
    echo "Arguments: ";
    echo "  -remove-files    Will remove all the files associated with the user.";
    echo "  -force           Will force removal of the user even if they are logged in.";
    echo "";
    exit 1;
fi

remove="False"
force="False"

for var in "$@"
do
    case "$var" in
        -remove-files) remove="True"
            ;;
        -force) force="True"
            ;;
    esac
done

salt '*' user.delete $1 remove=${remove} force=${force}
