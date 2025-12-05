#!/usr/bin/env bash

if [[ "${POSTGRESQL_SKIP_CHMOD}" != "true" ]]; then
    echo "> chmod run directory"
    chmod 775 \
        /var/run/postgresql
fi

true
