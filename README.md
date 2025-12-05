# postgresql

[![Docker Build](https://github.com/dockhippie/postgresql/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/postgresql/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/postgresql)

These are docker images for [PostgreSQL][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/postgresql
*  /var/lib/backup
*  /etc/postgresql/init.d
*  /etc/postgresql/conf.d

## Ports

*  5432

## Available environment variables

```console
POSTGRESQL_ADDITIONAL_HBA =
POSTGRESQL_ADDITIONAL_IDENT =
POSTGRESQL_AUTH_METHOD = md5
POSTGRESQL_BACKUP_IGNORE = (postgres|template0|template1)
POSTGRESQL_BACKUP_PATH = /var/lib/backup
POSTGRESQL_BACKUP_RETENTION = 14
POSTGRESQL_DATABASE = ${POSTGRESQL_USERNAME}
POSTGRESQL_INITDB_LOCALE = en_US.UTF-8
POSTGRESQL_MAX_CONNECTIONS = 100
POSTGRESQL_PASSWORD = ${POSTGRESQL_ROOT_PASSWORD}
POSTGRESQL_ROOT_PASSWORD =
POSTGRESQL_SKIP_CHMOD = false
POSTGRESQL_SKIP_CHOWN = false
POSTGRESQL_SKIP_MKDIR = false
POSTGRESQL_SUPERUSER_CONNECTIONS = 3
POSTGRESQL_USERNAME =
```

## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: https://www.postgresql.org
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/postgresql/tags
[quayio]: https://quay.io/repository/webhippie/postgresql?tab=tags
[github]: https://github.com/dockhippie/postgresql
