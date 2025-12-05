#!/usr/bin/env bash

if [[ "${POSTGRESQL_SKIP_TEMPLATES}" != "true" ]]; then
    echo "> writing postgresql config"
    gomplate -V \
        -o /etc/postgresql/postgresql.conf \
        -f /etc/templates/postgresql.conf.tmpl || exit 1

    echo "> writing hba config"
    gomplate -V \
        -o /etc/postgresql/pg_hba.conf \
        -f /etc/templates/pg_hba.conf.tmpl || exit 1

    echo "> writing ident config"
    gomplate -V \
        -o /etc/postgresql/pg_ident.conf \
        -f /etc/templates/pg_ident.conf.tmpl || exit 1
fi

true
