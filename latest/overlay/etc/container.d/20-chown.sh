#!/usr/bin/env bash

if [[ "${POSTGRESQL_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown run directory"
    find /var/run/postgresql \( \! -user postgres -o \! -group postgres \) -print0 | xargs -0 -r chown postgres:postgres

    echo "> chown data directory"
    find /var/lib/postgresql \( \! -user postgres -o \! -group postgres \) -print0 | xargs -0 -r chown postgres:postgres
fi

true
