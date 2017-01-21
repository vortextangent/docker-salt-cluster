#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

(./ubuntu-salt-base/build.sh)

docker-compose -f ${DIR}/docker-compose.yml -f ${DIR}/docker-compose.local-dev.yml build

