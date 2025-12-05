#!/usr/bin/env bash

if [[ ! "$(id -g postgres)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} postgres
fi

if [[ ! "$(id -u postgres)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} postgres
fi

true
