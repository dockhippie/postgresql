#!/usr/bin/env bash

if [[ "${POSTGRESQL_SKIP_MKDIR}" != "true" ]]; then
    echo "> creating data directories"
    mkdir -p \
        /var/run/postgresql \
        /var/lib/postgresql
fi

true
