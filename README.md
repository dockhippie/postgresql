# PostgreSQL

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/postgresql/status.svg)](https://cloud.drone.io/dockhippie/postgresql)
[![](https://images.microbadger.com/badges/image/webhippie/postgresql.svg)](https://microbadger.com/images/webhippie/postgresql "Get your own image badge on microbadger.com")

These are docker images for [PostgreSQL](https://www.postgresql.org/) database running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/postgresql:latest`


## Volumes

* /etc/postgresql/conf.d
* /var/lib/postgresql
* /var/lib/backup


## Ports

* 5432


## Available environment variables

```bash
POSTGRESQL_ADDITIONAL_HBA =
POSTGRESQL_ADDITIONAL_IDENT =
POSTGRESQL_AUTH_METHOD = md5
POSTGRESQL_DATABASE = ${POSTGRESQL_USERNAME}
POSTGRESQL_INITDB_LOCALE = en_US.UTF-8
POSTGRESQL_MAX_CONNECTIONS = 100
POSTGRESQL_PASSWORD = ${POSTGRESQL_ROOT_PASSWORD}
POSTGRESQL_ROOT_PASSWORD = # Required
POSTGRESQL_SUPERUSER_CONNECTIONS = 3
POSTGRESQL_USERNAME =
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
