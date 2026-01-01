#!/usr/bin/env bash

declare -x POSTGRESQL_BACKUP_IGNORE
: "${POSTGRESQL_BACKUP_IGNORE:="(postgres|template0|template1)"}"

declare -x POSTGRESQL_BACKUP_PATH
: "${POSTGRESQL_BACKUP_PATH:="/var/lib/backup"}"

declare -x POSTGRESQL_BACKUP_RETENTION
: "${POSTGRESQL_BACKUP_RETENTION:="14"}"
